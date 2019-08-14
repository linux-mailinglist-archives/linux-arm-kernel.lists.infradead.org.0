Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C228D439
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gPEcUIZgpW6bluqXOe2afsUf1nLn4q6h700dx6IMhU=; b=Du1L6eOnGG3h6e
	Wfnn5AZ01Fs1uT7MgVk0ROhGZTS7C9ayQhPxcSRxXyELA7dJg72WcGTd2b8N72Ch4IhAO5Vus7hCP
	N54lPK2gTOwxwnXki/FK9zy+vLr1X3XVVoXhv4ryJh0TJXqDrnoAHej6wyn5KrhFf6QkEpTWFdagz
	eQWcnshwuDXJUKWSKZYq9+fKaFKNkblk098ewA7N+5R4ZUGrevJ69bDIi/nLIwtaVFdsMptPjgHSE
	XQc5b9JHkXYw9O5UdEQ7IA/spiaV3th2cGC/5zgkrrOI0ye1TCeggTUKfM6GqdTFAcyN6lHkVeqUr
	U0UwGkpa1aw2wYI8zVTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxt0a-0004qv-7Z; Wed, 14 Aug 2019 13:08:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxt0O-0004qb-T2
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:07:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id b16so14324394wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 06:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bUiJlyywrd9qOeHggGnBEMrvx4sujv2K9Nz5ZSaq2dU=;
 b=GKYtsfjiL1JCWXffB51v6DlU4Hf4CGt0TzUfD+DWd6krHAm/AGEbDjx4V6lg8DmUxM
 SGcxSQNTDAM5N97o6/T7xde8i4lkyy4/thacoLxGDFZTPbX3TObXcipXS9eizikgW+mq
 AHBj+DSxOiFhDMxsMAf6DAdPOq2C5k4UaqUn9TgaUNlT+Vr2zzCBnyV1d6xCxyHAg+mg
 zP+LgDrsGQEXp80G8rFl8+9UPhHX/Q3TOWCn9zETrIKcb3EM1yLXUewgs1q1Mx4tQu7p
 LG4VZ3dDhNc53CgM7rydsjj0fCJ2fWXBH3l4b3P4TVt8xiR4Xz6GbsQXskNkEoIdpQNm
 kyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bUiJlyywrd9qOeHggGnBEMrvx4sujv2K9Nz5ZSaq2dU=;
 b=TtbuV4bCSxE1Ll1GQjEAEYCQI+KBYMVFRXFHN3fEkiwW7J24QqsJ7bnxt1TrN1+TBl
 oHSuJJegwHIRi0AZDhbayMJoA4WrzOHUtqR0cSIhJRH1kXGfkBQMaiTXoaqoluIouVQw
 itXmPMxTnEEKBd68yOAS0Kij32Xyn1WCJOekxi6UmQJIfinfMAN4YdkAfLBVOp+TA9CW
 a/bAE8ncL0gGRAJQBjhl9lhBG+8hWaqTHAKxiwiR5tEQvCH1dnslHh8kMMhnsz16LwAU
 fr3Bv4RnvZnBrRO0PQyqBbafdSi7rAasxGIt0rqLsCMJnjfJEqDqLUwX7LMVD+cx7eqq
 //Gg==
X-Gm-Message-State: APjAAAUYSO8mCsCYMP/IB9AYFPCcREVwciPZ9tP2OBmlfdd94pDWw28Y
 pgmKL/3I4bxpKab3Zu8PPzg=
X-Google-Smtp-Source: APXvYqx5ozZfahRF9YtaP48lH4QJdsRI2C/SN0gyU2YSeYzTMX4cfhjZV8NYIPqRwSY6ofdZoF83wQ==
X-Received: by 2002:adf:9e09:: with SMTP id u9mr4308277wre.169.1565788075028; 
 Wed, 14 Aug 2019 06:07:55 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id g15sm24674256wrp.29.2019.08.14.06.07.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 06:07:54 -0700 (PDT)
Date: Wed, 14 Aug 2019 15:07:52 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH] ARM64: dts: allwinner: Add devicetree for
 pine H64 modelA evaluation board
Message-ID: <20190814130752.GA24324@Red>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <CAJiuCccEQFvKemTodJbuEDzDy9j6-M4SYskxPFJ5DpsbQDnvkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCccEQFvKemTodJbuEDzDy9j6-M4SYskxPFJ5DpsbQDnvkA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_060756_965304_48FDED6F 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, mripard@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 04:50:35PM +0200, Cl=E9ment P=E9ron wrote:
> Hi,
> =

> On Thu, 8 Aug 2019 at 10:42, Corentin Labbe <clabbe.montjoie@gmail.com> w=
rote:
> >
> > This patch adds the evaluation variant of the model A of the PineH64.
> > The model A has the same size of the pine64 and has a PCIE slot.
> >
> > The only devicetree difference with current pineH64, is the PHY
> > regulator.
> =

> You also need to add the board in
> "Documentation/devicetree/bindings/arm/sunxi.yaml"
> =

> Regards,
> Cl=E9ment
> =


Done, thanks

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
