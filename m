Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3E74067
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJWp6gIEEsmkTe4IG2bHMGQKtR00OB59QGczb1rmicY=; b=d+1qhXOxZWjWUp
	VJ78MiVkALzF79jMVpw2qUwbyM1cikRFVwMJ9btRa/sMoAiMuMQayemS6HYtecmLsEDocUrzyfCgS
	/Nvy1qTpIilC/jVmQV8oHSVRSMAPvTnqrb3xKpTJRHDxMvHuU2QDAl2WUyhT/Q5n0PI+FQDh1ZHu6
	70zu/Et0myqCIyrOayG/2DBBlaac/hEckkmB5G8zFV7u0iC2y3WCxmm6KuAQ/EDCEnyKyHvSp+vb1
	4tKsOxqp1WZxdDWqxnZZHHP0jYnllwpoz60uZS8MmAN9AQFJcRJ+1jtkukgDxuc6GUuNY+WE0sGq3
	F8zGrnMNo5L7Fsy8dP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqOBh-0006JW-3Y; Wed, 24 Jul 2019 20:48:37 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqOBU-0006J2-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:48:25 +0000
Received: by mail-io1-f65.google.com with SMTP id s7so92389726iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:48:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IHAe9r8SwKR0SOE7feOFdveA8IT0SDk7uX1IR0X6Pa8=;
 b=aJNf52AiiGTX9qbpEOpRyuvJseUzgtvcFy8/klYibGZGe31mgmtOXynpCE1J4N6llO
 a151UGupuKjXvY/Z6cEi9FEwX32BflhS1eoOpVvXka9D12BIzJx/kv2ZePNfrlgzZ8BJ
 aVhW9+VeNPpEY8+x0UbyKyxj8AKjux4OMjhCPe5wRKQt+Z8JNEOccLDz7qq6AEDpjj2w
 lZv3pst3WZgf1Z9WhCD4MgdiLvOiGnzBUyJH+nZxAVteBjxVX409qxxyWYy/YkOsH8Pi
 v8k1m7NDK+LufzUF3aIO2u/P8s6pcOWmrlVr6Gr/WmwPYvDWnC4Pg0QFVlJTgSoEkT24
 45UQ==
X-Gm-Message-State: APjAAAUgagNeF8+vFkkNpd5Y4E7HUR70lxquwq/wDa/ulrh6Cu4dgU6+
 KxLCmDllML+QnDSpSh41Qg==
X-Google-Smtp-Source: APXvYqyaS0TYvzjTPZIPuZme/uFk9QJ9Ap7J20wOVd2CKLqEYYi1duV0VS989NHcY60O65J0oEWMoQ==
X-Received: by 2002:a6b:5a17:: with SMTP id o23mr73100927iob.41.1564001303913; 
 Wed, 24 Jul 2019 13:48:23 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id y5sm49459573ioc.86.2019.07.24.13.48.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:48:23 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:48:22 -0600
From: Rob Herring <robh@kernel.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: bus: imx-weim: document optional burst
 clock mode
Message-ID: <20190724204822.GA17166@bogus>
References: <20190712204316.16783-1-TheSven73@gmail.com>
 <20190712204316.16783-2-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712204316.16783-2-TheSven73@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_134824_691203_6441A351 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019 16:43:16 -0400, Sven Van Asbroeck wrote:
> An optional devicetree property was added to the imx-weim driver,
> which if present instructs it to operate in burst clock mode.
> Update the dt-bindings to reflect this.
> 
> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
> ---
>  Documentation/devicetree/bindings/bus/imx-weim.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
