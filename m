Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59E3B647B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eS5+XOvbTF531mFuHpnqMA8KPdj/Bt5Ot4g9wubpUQg=; b=JrTwrbCdLRev6M
	T/uQK3AZrlo2eEAWwDwtSFL1W5vK5WdtuynhVj20blWomIlSuhhiefgVheyGB0RPfHhBz+LoJRivA
	SpbtYFPVlkzQdzcPOGrkG2YlCHMlXvAfjJTU2g7kz2iSPXxFVlEXK4GrlY14ByHt+1+FvdqfDwc73
	ji02YJNnQlJD607e9OM89frTFcJg15c5k1pfohbrCWp7pRttE6zrKo8PB5pskaUHfqP8nASe3Y5I0
	l1EAsfCjYPkAINgEQDkb+xWCtvsOOXnYopsDY/PJrpKDe0oXDef2ZuyAmEYGQjeivgKvfCIkirGZT
	6vjJS8SPbzwa287P7Ecw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAa5c-0002my-Jp; Wed, 18 Sep 2019 13:33:48 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAa5Q-0002jg-ES
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:33:37 +0000
Received: by mail-oi1-f195.google.com with SMTP id w144so5971352oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 06:33:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=IC0q0Es9HxTLSb0PNX9pAw25DkwUzoXEjlENlSs4w9s=;
 b=l2jzxLTI5zo8bINxy8mFHzWJ31vyUO3FMQAogc5ZKsXt65bFBKdemEAN9uxqJzr7eb
 BDe43GIybanM12wgoGTXZgGQZHBRAny+61JKoP3eMXJrtuO/A14ilLzFA0J0jN7EPMQl
 er6WM+j21nCUw58by5eNxLdgfgPoXxAxOEYGJARqaE6TvVC4PWy5w8uc23bn05TpQnJx
 +f42nEmwVQvwTIjM9n/EtukmkJYG/C4uFW5IMwyu1HrW+a0jk7d/vVoLa6qyF74fLOnG
 raGi9IUZ/QebZrZ9eHou96bXhADcbPDGmeOWsGW0iBiiPleFGsbzBV5nhwtktJdjXjA2
 dKww==
X-Gm-Message-State: APjAAAVeBZSqt1qnChxUYKn1qbpOjKdCXbpRtz4VRAoWaBescvYh/bDj
 QF6VNHnSjCe/4082icYSRA==
X-Google-Smtp-Source: APXvYqzFKo2zD3kzQfStRe6u5Z04KLvlPbxnoLNER1RO58XbbuUaDka1izzgYXa3YK3Q2YrDvoHnFg==
X-Received: by 2002:aca:f50b:: with SMTP id t11mr2237475oih.1.1568813615350;
 Wed, 18 Sep 2019 06:33:35 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n9sm632424otn.4.2019.09.18.06.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 06:33:34 -0700 (PDT)
Date: Wed, 18 Sep 2019 08:33:33 -0500
From: Rob Herring <robh@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: etnaviv: Add #cooling-cells
Message-ID: <20190918133333.GA21684@bogus>
References: <cover.1568255903.git.agx@sigxcpu.org>
 <6e9d761598b2361532146f43161fd05f3eee6545.1568255903.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e9d761598b2361532146f43161fd05f3eee6545.1568255903.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_063336_486212_D29E999F 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Abel Vesa <abel.vesa@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Fabio Estevam <festevam@gmail.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org,
 "To : Lucas Stach" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Sep 2019 19:40:36 -0700, =3D?UTF-8?q?Guido=3D20G=3DC3=3DBCnther?=
=3D wrote:
> Add #cooling-cells for when the gpu acts as a cooling device.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  .../devicetree/bindings/display/etnaviv/etnaviv-drm.txt          | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
