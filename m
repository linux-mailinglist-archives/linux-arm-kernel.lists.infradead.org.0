Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A90B156746
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 20:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55itaVTSZ+0eB4nU6w4AruUnwLinCZZ7W7Y7j6lUEz8=; b=VkP94nnA4BO5bt
	pv5sxkmwsZ4xTMH8Bw2yaIwuqDSuIRUjPPmegoqIuLg6BBbReQtEU9skUe7drk0XkiaBkO2eNpYuj
	IlKZHwic8SWIVdo8lPPg+o3uoDOqEUkxz2LENQ+NSXQUaYPQh4CPGjPoE1ebaHrksSku9qsfKosKc
	kyDIU7DzqI/wtcOuklIHp+L2ETwqpZQ2VeWThPFXC+6pZChnwDh3IlfaoVFSudJriYa5J/fYic96h
	vTyNrbvT4Vmb4R4TV5ZEyiZ8LhD89J5NHB5jDqoAtPSOIlAuBQAj1+Ey/jLeTYYgwQfowkrM44eOy
	dQgr67qsXXr37y0W1Ixg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0VSC-0003iw-ON; Sat, 08 Feb 2020 19:07:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0VS6-0003iI-Du
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 19:07:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id w1so2764592ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 11:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q+vjXU2SW2HOdfOFCkX7livwJmowb74J31opeMZWUCA=;
 b=w0JdVEgTe4SS+T8Svfog6mLAmWZXFIwgC71xGQqk2YbPV+MgtSYLwJCUnqbuKx8+Uh
 u50q+ll5mqnMS7iOwjH6yhEL/+AOxKXpVOH4bxJadba4hQQkudbbwW2yJbbVJ1dED4gK
 wrt0X/U8D0gjOIz71tSYEotpqYiQROKSBzbW38Nq6uMuBT2TNTaKFuevQjHPf28VsNhM
 d76Ue5OuvTSg/91VKorHegpXZpdC8A/4USXNauaeNukjXZXGDmEN/fVCi0/bnOUB/UKo
 Q8WtQgNlSbo2zvGBKClFIRFrKxMbg1VPI3r10Bf5XYITJw1QX3ls88Y9F7c82MgDDm67
 KtHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=q+vjXU2SW2HOdfOFCkX7livwJmowb74J31opeMZWUCA=;
 b=mozEKWOJgdg/w78ypAQMYVUjYJGnobAAO1fUqtJ/NK27hPq+YX4eJFSNORTEebjadW
 yofE1vy62eo6xw7910Idravzl4jVTQPr7Q64e0v8Ano9gIwPK8rRRM68gtGEvSoz8pUi
 xk3tx8FRyyPv2Yt4KjHmhP0n1jWqVeary7P7T/YI5IwyLqjHqym1eZRDSWgaRBrULas5
 owKkq4eNeg7bxE/8Sbt1bJ5atdcczzygVgNu+ThKy+jMcG9h1/Sxaiyo4G7GQZZFD8sF
 PcmlhWp8fRWB5SNExhuKZ6fULsufB7dGFylzXR6FoD1pSgWXu1BkpxuoMttmTZ3pYtJ3
 PKNw==
X-Gm-Message-State: APjAAAUqMrA1FWDIh4jC01Vz3rW07c3CEk/6O1WXznZSlatlbuLIwc1E
 SOJtbClwJNuZazZD5loar5W1uQ==
X-Google-Smtp-Source: APXvYqw+hv9rxpIg4ETFyGzRDGxPLYofUNYjHEUqHuRFb3fygBzmWxL7+wK/VYmQ6OV/4Fn5/LcxYw==
X-Received: by 2002:a2e:9696:: with SMTP id q22mr3229986lji.54.1581188856412; 
 Sat, 08 Feb 2020 11:07:36 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:48a2:c7a4:1f8a:70c9:2c66:3e73])
 by smtp.gmail.com with ESMTPSA id w9sm3508790ljh.106.2020.02.08.11.07.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 11:07:35 -0800 (PST)
Subject: Re: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR
 register
To: Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann
 <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <374e26ca-cd3d-fd12-edad-5f24622b9d3d@cogentembedded.com>
Date: Sat, 8 Feb 2020 22:07:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_110738_494718_C0F94A32 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 02/08/2020 09:36 PM, Lad Prabhakar wrote:

> The mask value was calculated incorrectly for PCIEPAMR register if the
> size was less the 128bytes, this patch fixes the above by adding a check

   Less than, perhaps?

> on size.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
