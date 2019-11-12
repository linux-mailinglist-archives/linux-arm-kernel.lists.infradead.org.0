Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ED1F9B95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 22:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEBk3M3rjm/z35g2cddsRCrvbURiLY5APFgfB3JZJco=; b=qvxNOYkuMBRcsQ
	uMNzKfa7jHnsV3dxtGbiO9H18Qw5JWeSp4NvNQZoO8xmASFU6rfS/Ll8edo30pnqN4aHZp6DJ17fa
	6rT1XR7eNbwzcF6JsN9X/tS275MycORWKYNjEw6O62CtFi5qFPWvsVhyqn3bdfl08pnRVl9ul0Qht
	abZvO+R8358wHmqxCEadNjIpNKT+fWGIki79EOOmrllk7JZmbz6QqMpbSErJfbQTsJC4e1Xs8wtNE
	RbF/cfj1k0PZg7JgeRH1uI9QxlXpmTvUgIKOhvRY4AJE2fKjejmpwJ3RhRAXoDbAhZvbSC2MKLKop
	z1z6tm81BvRpLvqoR9OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUdSH-0005Bs-8c; Tue, 12 Nov 2019 21:12:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUdSA-0005Ao-De
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 21:11:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id i10so20134635wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 13:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TH0pQYUJAlU7IsOFtdmL7+pSDQHhMRdnIPSaufyDmy8=;
 b=neEOr/XhAjqS2x9v3RgYw6pa2yydP1Q9JSSiLlWFJIxTYLEOLa7mLOTKIl4yhff0jk
 RTpE4J1jRRQ+eHTi6JZsc24l2Ta2bLpMVWmIbTq3dhhi+L7FoDbZm/sOJ3i4rAsyRdDX
 V94VvherLU5TtlZ1ae6EgELdAjwKNl5FCOxABoxwuU98Wt1cEx/ikbcVoxxXx80UPkBg
 hslzLRk+Jc7IbTilicRxneNTDKgQeX2X4A/bUwXN/cpEXqn26xebQHebyNr+1DqzjnFX
 maUbHtdjsdndpPIDgJqQv9CZZcC/X9Z18TeuE29qzO5/xQ2mQpd1qbEQkK6X2pAIPFtg
 q8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TH0pQYUJAlU7IsOFtdmL7+pSDQHhMRdnIPSaufyDmy8=;
 b=ouVms5XSyA9/3mb3VUNya6ATTTJUqqk9sDfLpKN8gAhr+YteHdhWBGKLEwPvNOYbLq
 ifZRyanBVTSoSHqbx+yopf3TNc8ZxqU2VzRwOzM86imhc5jwMgizMMEsLUTlkCpEwcZ0
 JtthmriejtoVngVsgHbUkmniLgUY/Nb+tWdV8RxvcUUIDb3VrugHqioaDToZzxkJx2jb
 wyxv16nElX14xUEM2IUfWF5Ed8cWg45VgMoi53Fd/YSCpMwZbL7N4v0IJ+U861ZzCv3a
 ye8TTSK0Tl2g/DW+4Iloj8rtN+wd0SBJwwLCl5htZxTSh/selQjOGxq7BQNknqOnrknh
 RwCQ==
X-Gm-Message-State: APjAAAU0kPylxeHx6A/HvNWKBWWRy0QQ2ZZPjgd80BzFzL35W7K0CNHm
 64CJv7VzaqHHgKJcrWnWChY=
X-Google-Smtp-Source: APXvYqwPC9fJ42i5AXA+/+UZDEXTSIrJcX9xrFP4nukTIBnH0H3uUwx3Qpgyd/akL0iH1VkPpPpGGw==
X-Received: by 2002:a5d:660b:: with SMTP id n11mr28661241wru.146.1573593112312; 
 Tue, 12 Nov 2019 13:11:52 -0800 (PST)
Received: from localhost (ip1f113d5e.dynamic.kabel-deutschland.de.
 [31.17.61.94])
 by smtp.gmail.com with ESMTPSA id r15sm224436wrc.5.2019.11.12.13.11.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 13:11:50 -0800 (PST)
Date: Tue, 12 Nov 2019 22:11:48 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: arm64: fsl: Add Variscite i.MX6UL
 compatibles
Message-ID: <20191112211148.GF20321@ripley>
References: <1573586526-15007-1-git-send-email-oliver.graute@gmail.com>
 <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
 <CAOMZO5Dwt6yJ45gE91opUf3nNx24AG00Lk1KPLJ_7Z4F0os7zA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5Dwt6yJ45gE91opUf3nNx24AG00Lk1KPLJ_7Z4F0os7zA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_131158_465562_24BB4EBB 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/11/19, Fabio Estevam wrote:
> Hi Oliver
> 
> On Tue, Nov 12, 2019 at 4:22 PM Oliver Graute <oliver.graute@gmail.com> wrote:
> >
> > Add the compatibles for Variscite i.MX6UL compatibles
> 
> You missed your Signed-off-by tag.
> 
> Also, you should remove arm64 from the Subject line as this is a 32-bit SoC :-)

thx, you are right I messed thinks up. Because I also working with
another 64-bit SoC in parallel.  

I'll fix it soon

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
