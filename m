Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F79B163AAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 04:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hM9TVSGGCK4xRfjd+aT2N4juAQfGMV5e8aYSK9+8SYY=; b=teWp9LwUwohnVf
	lrLcoTgakdpk2fIg7v3a2Mn63XI5o50lbSCN/rSMjYkgFFSkAgiLMXkOZdjap5LAyBr1Y71L0qkuH
	8uTjQr9WfStyQ9+UsVIbtJSKZ20jdI59Q2JMvHVmrnwJfZZ/2CuHaktFwoAl02kGb3or6ABogfu2e
	7GK1jB3zLtuzcs2QQJzmnhcUWX/38Nf7ccVB4vmvmg++EC/CKS+w38yC4m1lloM2/Nf/jatxjIqPX
	MCEmOlbZxrUs86fqIPG0qjW3s616zu6VybeV/R9maTb8EOhyGpWRCFzqDI7mXU8Uqwtgms34fGbZY
	lp+BN2HEhMM8KoGQGZ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4FdH-0001Wn-It; Wed, 19 Feb 2020 03:02:39 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Fd7-0001VF-Hf; Wed, 19 Feb 2020 03:02:30 +0000
Received: by mail-ot1-f68.google.com with SMTP id w6so12531033otk.0;
 Tue, 18 Feb 2020 19:02:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wM36jiU/uEy31IzeR1mb5iKzvzrpChL40oT2SOGRUi0=;
 b=qmikZ+JAtHWuYxukuGOKvigIY05sIVHRTX6SgYrrpLKOGRH6XGm6FMpMeA3eMoXIre
 yKUTRDNcxAkHJjn+4YZBhzjs4Txh5cmH3Ppjn5EOWJcg0+HU4yQlgW3OLCnJm+BFjd4G
 ZcAzh9prPiWTTpGptqjNKBfoQ3k7wRauMMRxQz0okK5If/4VhmozdCdzWZi4G35ldbeh
 yAJo3a5TA/gykYvlzzWjAT6qISFm5XGa2LAAwmdmppHpmfaVnD7zHb5hQh1W4BC31CW2
 28LazE6VwH0fpXarDMVQcwKXoqVWgOy6NlyxmK7B7vDhnw0UsFCr5UklcaoURV904YVk
 R1iQ==
X-Gm-Message-State: APjAAAV/feZU86d/yIp2sU6Cb5TUvCAgLW6QRQRfZ0dtWRX6dhD5JUiu
 55XGKbFvZVT+HZ13fYMsDg==
X-Google-Smtp-Source: APXvYqyK+6EWyXhC3a/7xDZK0yFV9OL48vn100QsFjIeQ8ddy37zTQgKDMZU5KOrzSI/ZG374IuWig==
X-Received: by 2002:a9d:4c8e:: with SMTP id m14mr17131477otf.245.1582081348149; 
 Tue, 18 Feb 2020 19:02:28 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b15sm199703otl.60.2020.02.18.19.02.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 19:02:27 -0800 (PST)
Received: (nullmailer pid 14862 invoked by uid 1000);
 Wed, 19 Feb 2020 03:02:25 -0000
Date: Tue, 18 Feb 2020 21:02:25 -0600
From: Rob Herring <robh@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH v3 4/4] dt-bindings: mmc: mediatek: Add document for mt6779
Message-ID: <20200219030225.GA14824@bogus>
References: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
 <1581922564-24914-5-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581922564-24914-5-git-send-email-chun-hung.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_190229_585761_D8AAC919 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, wsd_upstream@mediatek.com,
 linux-mmc@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Pavel Machek <pavel@ucw.cz>, Chaotian Jing <chaotian.jing@mediatek.com>,
 kernel-team@android.com, Pan Bian <bianpan2016@163.com>,
 devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Chun-Hung Wu <chun-hung.wu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 14:56:04 +0800, Chun-Hung Wu wrote:
> Add compatible node for mt6779 mmc
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
