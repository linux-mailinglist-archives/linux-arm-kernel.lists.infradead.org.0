Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C119D63E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yN4ZxZXxYm60iITVKq8YMEafh+NOczkl2k84w7ukN6c=; b=eTdy5MTpiI9GHI
	6N0BgyXhza5Y1j0dd09Q8YJGzXEeIOiFEt7vgiQCXx5RdzP5TpufnIdKBFaC06JkfkUzaC5C0ZzQ8
	+phjRGlurBt90wHXk0/xqvTUZqpshthj5dE+Xz9Zy2vHoBJi9QjESHGPCMl1OME97tp8C7WjKNyem
	HF4F63jrRdNi2vZjSvOfmmWNKeQy17S7oiSkLnMKlron0JZQxgzYH26cZ4HfYxRFLOzGxi+WQGYtx
	af/r+RKEXfi8SzzN5F2sKX/BXSJOdi2icoRCGEJISMOkFX9AKD1w990Fj6KZ9oNlR4BD6dupMggCa
	qXuvEdRttu6qcuUIR6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKzh-000261-81; Fri, 03 Apr 2020 12:00:17 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKzW-00019f-Uq
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 12:00:08 +0000
Received: by mail-ed1-f68.google.com with SMTP id i16so8905180edy.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 05:00:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2wc7UveTdPZFYH0ZRbje1TaqQfrS6AXkhVJ3giRnWQg=;
 b=cKWN5LdgTIIUfftghGB1ksntKEFFuWyZwIjzUqbloCd13x7kjKkZMhHEK5KJ96Rbdh
 reBOuaCWIs0oqdvgbqlblt1ziovYTgf8+1DJWhcbSA4ugIBZYTFCyV4IyWR5rG+jMxi6
 fIQA7KukaTNBdyDQd5IBoktZg3lGHDI+waVRYDKX/8MiRkJtly2Ry4pm4EezmkjJc0Yj
 gsV41X4JAxPEf767ysZsYcSGTG2FSYvC4UKAc6ZdCuV14dsbWPXb0m/15GySR1mTGc0B
 p9Fa4gpsytj8VF7d0Zul/+6BA6oeTmRDQTSOIwQjyIw+AVBmKT68YEtr0FbDDRyLxy97
 iU2w==
X-Gm-Message-State: AGi0PuYO8bSQaRE3M7lLAKJcLxtxqwezs+LvbWp4roRDkfJPW4AeVfRn
 +h8RTxzGJMhtCROXSlET4IM=
X-Google-Smtp-Source: APiQypLIn4dLIkqkA1s1CVJ9ujO0XsacXjWEzmUXeV58UH95EkaFLEmKyju+jLq5Vt5LYBy6dVckcA==
X-Received: by 2002:a50:a743:: with SMTP id h61mr7322529edc.84.1585915204852; 
 Fri, 03 Apr 2020 05:00:04 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id p25sm1662881ejw.49.2020.04.03.04.59.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 05:00:04 -0700 (PDT)
Date: Fri, 3 Apr 2020 13:59:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403115941.GB29484@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403111511.10598-1-hyunki00.koo@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_050007_019499_B7566C0F 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 08:15:10PM +0900, Hyunki Koo wrote:
> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> 
> This is required for some newer SoCs.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
> v2: 
> line 954 : change rd_regl to rd_reg in for backward compatibility.

I did not see any change around line 954 in v1... so what was it?

Rest looks good for me, although you should address Greg's comments.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested on Odroid HC1 (Exynos5422):
Tested-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
