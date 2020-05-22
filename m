Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D5F1DE46E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tw6so9jgLo1u8ZpzXvPDWX8MWDaBYIdiSs1+5ECEGeo=; b=lVSs36qLLyQpvT
	Z76S1l5v/xzfLbSCK+B4jrlrRZkQEhLZ8VIwjWGHRKg1U07mIKHECb4XzBNE+G85rbYd8V2B9Tc6C
	4XZTPA/G/3UEcrISyZecPQsOPUSYIGvAcdRRiFRIT8eueKwcSRGV3ikUZa0Ef0bhIV39lhKv7DiT1
	czXlv2AT6wlaA79HCNGKc45TXrStsViaa2DKzPC+OideOuH4ZxA3W4XEa5mJZG9EYc4SLYTv7U+XP
	CCoJZ5ZIlvzpyP0/HIUcIQf9nVWlzkAMJiGhb6clLUAb6tJ6w+UPZZ8TEZOb1Z5C1NA6tjlxB06cO
	iOx3AHg8HrQ6ihCl87+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4vx-0006Gh-VA; Fri, 22 May 2020 10:29:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4rZ-0001AT-Up
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:25:16 +0000
Received: by mail-lj1-x242.google.com with SMTP id q2so11948772ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 03:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QFKhlqVsnkCrxGWdbHIjo8dNnb/R1dHUqeBwV1cH3to=;
 b=TiKDItijeKH7AVGFffJI0WsNtOyRdNrgnSponqh9Hcj2fCrZRYs3B3Bdd2HlOg05Tx
 5qBXUFdajt8aoufhAXUacFaUH8FaSbAn26Hepd2hgOspoIzlvqskSQ5nCankhINkProQ
 2IGTwUr2VJjMHOLKq5GNkCJtC6bP9Tn+lHwi/ASvaboNZux3vduuFMqPInP3WsjtGrSs
 kHe+idR/q5hkP6P0eh5Fuk1GSDmF4RrrF57r9OoBGsKjO28YnX+WR8qcLCDzTjLEFfm8
 rxcgnte9/6zmd6WFQqpEOJBfqtC7qreSOtEvPez59qKolI25kHr0oET1mD+x4vS8f2Ht
 NxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QFKhlqVsnkCrxGWdbHIjo8dNnb/R1dHUqeBwV1cH3to=;
 b=Jq7SV6evPdrkAC/PtvSUuJ+F+QxKoXL2M3xSoqiVxY4XpJ25i8RVlZg/HmuvsfjFkY
 5tAs0toEfHMd6m3VYvz+UaV6NWX3akpqLKRTMC7zJUSilhrIyh1EkUHgfhrF/O3vazBW
 VT8ndn5z8+RXY2flqdKeyB2vmWqMSrw3YvO4lqfXcBV9ACDc2FDoFjfbhQLHL0/+5val
 PyoyKXD0cMUObKqcz2FZOQdGDy3QzVtJXTGQF9PnGiumvcG6ehKOY0PW0hXOV005w8il
 GC5CsrIi9FdKAiYPBaUPtSApQTgcsNMxv75j92bRrP5AraIBRfyGCPSakcEsqYXiCL+2
 T/Xg==
X-Gm-Message-State: AOAM5327sSsZhvlnsQdMoClC+AgOo1cJjo1Ta5wqMAABYn9q96Km/z4G
 HKZB2sVDTKCh7W/FGQK0RFwAC17wTWxRPBICpFY=
X-Google-Smtp-Source: ABdhPJzgtITNAmGF4FXDUvVXgptvmZlGGf0/KQTzAC02eg1W4hBckNpsHF3Pn/RNqPoMOseHlfs4TSbPN2lmM9PcjH4=
X-Received: by 2002:a2e:b4f3:: with SMTP id s19mr795267ljm.218.1590143111779; 
 Fri, 22 May 2020 03:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <1590144291-18526-1-git-send-email-yibin.gong@nxp.com>
 <1590144291-18526-2-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1590144291-18526-2-git-send-email-yibin.gong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 22 May 2020 07:24:59 -0300
Message-ID: <CAOMZO5Aiw+3N_o5+1g4nWWgsDQ5Yhdenumn04OhG6BwBy99EZg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_032514_022906_A6A92389 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Yongcai Huang <anson.huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 11:44 PM Robin Gong <yibin.gong@nxp.com> wrote:
>
> Correct ldo1 voltage range from wrong high group(3.0V~3.3V) to low group
> (1.6V~1.9V) because the ldo1 should be 1.8V. Actually, two voltage groups
> have been supported at bd718x7-regulator driver, hence, just corrrect the
> voltage range to 1.6V~3.3V. For ldo2@0.8V, correct voltage range too.
> Otherwise, ldo1 would be kept @3.0V and ldo2@0.9V which violate i.mx8mn
> datasheet as the below warning log in kernel:
>
> [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
>
> Fixes: 3e44dd09736d ("arm64: dts: imx8mn-ddr4-evk: Add rohm,bd71847 PMIC support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
