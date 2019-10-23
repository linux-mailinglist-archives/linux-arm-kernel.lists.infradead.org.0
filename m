Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62013E2426
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eevHszKUidzde1uWyXXhiaVokF492cSu01lHFS5yp3A=; b=R5x8mdsXYLbVin
	cLXcg3T8+8Ekio2MUnjX10LPY48/LbhLwva93kPn72LnrN1s5AOhOVU3JXbmrx4BEZUYNyPh/k3zO
	Q0kqEPd+OnweVI6XZc4byPleVtnFLFc8EVV/z6p9Sutw19URq8gyoKYkzv5auDF/Qrf+VKR6FusaH
	ZqpXCd+OZ5xtPr1x1d9yCEKT/3GX7OOjRbnTtBftdUcs5VpU9tcEzsnIElE6cc1bK1E9lqjKrmPxs
	UCAp8mQjHQtEc/EDnfsKI7viZBiiHJXq4L6pLxmuZAhrBUaKiJIWf0PK3lf8ms2sW+hjsptc3jm/I
	nCcvwifO2l+1iLTGchtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNN1w-00087X-Py; Wed, 23 Oct 2019 20:14:52 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNN1n-00087C-Pv
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:14:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id 41so18559964oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yHCtWGntZMmI9Nauyb+KPzomFg4uDRjl1jF3iEvwjaM=;
 b=RPrdRxvbNn6vn0xI/0D/fNzr5c5vCrL28mqRb8EnOi3FVnto0dkDtzakRvboZe4X/q
 rTTkdYft3ZkQQNZxecA/GEvdTJ5a9w8wTEXkc+Ql44zm4t7im68WUTL+90Hd2Kw1yZX6
 3uVsTHPxoAFKY9agiC0Od1Y3paj2ijsQkeBuD7o3fJl8RP8YHFlm0ZRxBSzawDkDj/Pd
 UbdNDWKqixh9AaJw6XoKCIOZXLvkBGsRaiE//Qpxo5I9JxhUxbW1pTUVbcM2vfzYN3pR
 BOfZyLO7Dcbx4DZLaS1geP6eAUVt+gjU7+Ohhht0QwD+V3otnD+rafN3zeMBOO49kALx
 10Zw==
X-Gm-Message-State: APjAAAUABlq0MPmDCdv72rxBZmnbPHC8PYGxOaGj9q4vdqszsOE1EA05
 YdHHfKgKxT0B+V16CAaUMg==
X-Google-Smtp-Source: APXvYqw1NRgPEgXyubbpFlPakz4U6gDoQjfqDh0u6EixhMw4HkgZOmWsMBDfY/9q/FOxoBgbY7o+sA==
X-Received: by 2002:a05:6830:1f09:: with SMTP id
 u9mr9254960otg.310.1571861682686; 
 Wed, 23 Oct 2019 13:14:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t10sm5992688oib.49.2019.10.23.13.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:14:41 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:14:40 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Goldsworthy <cgoldswo@codeaurora.org>
Subject: Re: [PATCH] of: reserved_mem: add missing of_node_put() for proper
 ref-counting
Message-ID: <20191023201440.GA29860@bogus>
References: <1571536644-13840-1-git-send-email-cgoldswo@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571536644-13840-1-git-send-email-cgoldswo@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_131443_838473_7C0D0ECA 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, robh+dt@kernel.org,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 19 Oct 2019 18:57:24 -0700, Chris Goldsworthy wrote:
> Commit d698a388146c ("of: reserved-memory: ignore disabled memory-region
> nodes") added an early return in of_reserved_mem_device_init_by_idx(), but
> didn't call of_node_put() on a device_node whose ref-count was incremented
> in the call to of_parse_phandle() preceding the early exit.
> 
> Fixes: d698a388146c ("of: reserved-memory: ignore disabled memory-region nodes")
> Signed-off-by: Chris Goldsworthy <cgoldswo@codeaurora.org>
> To: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: stable@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/of/of_reserved_mem.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
