Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FB3E241F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uir+P+FKlXGVGYI67RtOXiT2KLpTfjpD5nz82tKC/vA=; b=IpWLnRPN3UO/IH
	CiuFIM7bcumGSNnyp9cP2WG0sHpIw5tfQwK2ntKLXmRuxbtCfJ520RGAnWSUuiMMb+YznOgxYpOKf
	N33TPgJm107DYuRlFiiXFiEevVDywKWUXTrSMVMr8J0qS7q57KK2kg2sgKglGTUS7DVE4SN0Jsmzl
	uf1TNflJ1GzPYIMrg8CrR5XqK33HJ+9db+vegQtmewAwepQoDym+nEBOcmZ3WAbZtlzjSB5E2uh3/
	Y3A5PtrZKawkgjdS4yhc72ZPZZs0VwjwTaRjjekT/TlOk+rHlm5oOeim+Lrf1gazQZKFM15pQtxHw
	chTQvi7IQJBUUkvk4eoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMzP-0007lM-Mc; Wed, 23 Oct 2019 20:12:15 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMyt-0007N7-Vg; Wed, 23 Oct 2019 20:11:45 +0000
Received: by mail-oi1-f195.google.com with SMTP id g81so18535992oib.8;
 Wed, 23 Oct 2019 13:11:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ssgTw4r4WsQxJaQ0k03EQpF6DWzjNZA4/vVMy3/jAcM=;
 b=ZImRdKqJ7EPD/yiKvL5hEyrQmLi9eEXAQo9EqQ2qZRunZM5UpomdCZkloDjYeGtesV
 CiRU/ZrPGe4Zqpd336LMGD9c2mEml+g/+mPJ+kTu0QfSPA3BM8k2QlxY6E/ZZ1th9LL/
 cVf/Tkejshq0liT8pPwjlL0P/Z9YBfq9fEUxHvDXuoH12hU6ks/9D+OQbszjOmczS1O6
 OAmahcK/fyBc1eZZcfaMUkxtYIoYWBnG/4pivkiOebPcZaajuoRPryt67aEXLQ+Wr0yC
 0KgLro0/fv2Pf4D+s2Zu7FCTW7flfFf5G8HovkPndq8ysuRVblPh94iNmwbhJ7vmn0tC
 wzxA==
X-Gm-Message-State: APjAAAU+WGSkIUPDb/cooQzqn/uQ3MD2eNVXhAEzSvmeUmP0NewzkeW2
 tFbyW8BPXbhdUELt7Xk+FOVSOtg=
X-Google-Smtp-Source: APXvYqwwKmIXhOF7O4GFPIsSTdhEVmGYoVwlyXr/mkWIGXxrFLlArngzjnMcD7Lh9nvgON2DEJ3P2w==
X-Received: by 2002:aca:cf92:: with SMTP id f140mr1557736oig.57.1571861502798; 
 Wed, 23 Oct 2019 13:11:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a69sm5985960oib.14.2019.10.23.13.11.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:11:42 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:11:41 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
Message-ID: <20191023201141.GA21235@bogus>
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014141718.22603-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_131144_058513_60550759 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: balbi@kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 devicetree@vger.kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim <elatllat@gmail.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 04:17:16PM +0200, Neil Armstrong wrote:
> This patch updates the documentation with the information related
> to the quirks that needs to be added for disabling all SuperSpeed XHCi
> instances in park mode.
> 
> CC: Dongjin Kim <tobetter@gmail.com>
> Cc: Jianxin Pan <jianxin.pan@amlogic.com>
> Reported-by: Tim <elatllat@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc3.txt | 2 ++
>  1 file changed, 2 insertions(+)

Sigh, what's one more to the never ending list of quirks...

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
