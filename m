Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C34E714AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgJNWzaIWyCcFHPaAJBHvFyPW68W2bK0sMZ/Mo1kOWo=; b=Y3m0ORCnX7i3q/
	/JusDUWa4gcVMA0TN89OIGypSxtmOia2OB9poA1PPuhJItL5HBqHyTBRPsp46MjcO4Rvok0FrqHlu
	xtELrliZ5heT37pXfGEFPpuChnLrF7PH9EuidxbeENJj1fiNpVUj5qdcL9hahv0wMtGODZgkH2u4j
	b99wlOd+8FCvK9m1QNE1iBXKPglgCynr/+Uevasu3BvaPvYzqGwxtcLEEZU1pnrwJezxTQr2To/eD
	6DF3XHOeEMaRerhNuhYvO3mITUbnY5Zx3my2pbSXZAgLxftkOwp/Pfuy9iLEMCwD4p2UbmRi2mhDB
	abQUKdeJdwJEhuLoFqRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqnf-0005ex-Nc; Tue, 23 Jul 2019 09:09:35 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqn4-0005QD-KK
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:08:59 +0000
Received: by mail-ed1-f68.google.com with SMTP id i11so43122705edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 02:08:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=okyQ1wr7aMfjoTNpZ13nzePI9CwwhxoYY9up/i4FxFI=;
 b=agUfIKRtfwWWyhrEuE4cYDCdbD5s8j+ESyc3FmpTNY9J69sB9GbCn4S5Ggz/+N2K+2
 qAd7jwtJ4PUsRTYFkB8OqnA8iPSyh0jY4KTR/TamdvujiExkCBo1p/2rF/EObt5ZjrRr
 wBSxUJSzwdbcPrs9UwU9gm0tPuH8Kg7tFi/en20hAuMPZIhUyHYjb0I1UneM+ZSNIosH
 l5Ks8EUxE/9ZbcqIcjTIm2gtLU7oBPdIwHkGMw4lom0oKHO10Ka9/oS2QlVz/s2QpiOa
 vFYBfG/SabYq9fcRNBw6ehwT1rZQ/bMhgueG7177+rQ+Ma4ejj0aWTzy3+QgEIq3U/62
 Wd4A==
X-Gm-Message-State: APjAAAWlH+TeiJYOLwA3EF1H9yaa4BHglrLJfWEXtYIO26IpFT8aEf8c
 EXHOzVr22xEoDYERCpxCssx4bkMb4Uc=
X-Google-Smtp-Source: APXvYqx2Bo2wovtbzDJndJHTaZL8YMQhpZatF82a6ORXYGNqS/kgG//wAqjqpPx0uPyHBXC8YEvwBg==
X-Received: by 2002:a05:6402:129a:: with SMTP id
 w26mr64194969edv.167.1563872936459; 
 Tue, 23 Jul 2019 02:08:56 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id r13sm11589137eds.35.2019.07.23.02.08.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 02:08:56 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id g17so42317864wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 02:08:56 -0700 (PDT)
X-Received: by 2002:adf:eb0f:: with SMTP id s15mr4098727wrn.324.1563872935987; 
 Tue, 23 Jul 2019 02:08:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084407.4703-1-maxime.ripard@bootlin.com>
 <20190723084407.4703-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190723084407.4703-2-maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 23 Jul 2019 17:08:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v66+QUEbo9pAbG8b4cmfr2yh1xBhmwK-gadaZAs_mcV74A@mail.gmail.com>
Message-ID: <CAGb2v66+QUEbo9pAbG8b4cmfr2yh1xBhmwK-gadaZAs_mcV74A@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: sunxi: Fix the HDMI PHY name
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_020858_669367_8AF0F91B 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 4:44 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Even though the binding mentions that the PHY name must be "phy", it turns
> out that all our DTs had "hdmi-phy" instead.
>
> The code doesn't care about the phy-names property, so we can just change
> our DTs to match the binding, without any side effect.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
