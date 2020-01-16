Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C39213DFB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:12:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cd87r8ZL4DuCR9arOTWr1L/Z/eRJA7RG6qORmhEf/SQ=; b=katOXEc/VVz8OCfOOxrhY1hom
	xBbwjdkrmHjvZ/NIAYi4USJ0TnNc3McoG81XZ+kMtNoeEU+4Y5MYy6t4sTvOoUutVdweK3rihI+zo
	4jxkA+pAMsQlpl/W7Cq7dh7Sx/GR6m3Xi7sYTK4zwwb0kwXXu8baC/xFFzlit9UwJDBOLp79V+VC5
	cOlXPRy7b0gRkwW+2NaTLYi0o1l5UqGRLqeGOyCaH94lRUur9vxUWf7FKcKOW3Ks9MyKcGMNmmAbX
	NY4JFD9vWOiUdG67vBoShBtQrLYez8Qwrxn6zOtL36vACIJPEQzuA50Hu8hYgv6L9kYhLfxkmBAvf
	3dyvmoeQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7l1-0000fZ-VV; Thu, 16 Jan 2020 16:12:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7kV-0000Rq-H0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:12:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so4343028wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 08:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wq116TZAe0p40heVVDfMLRBuWEj6xKtwx1Np2GXHzlk=;
 b=qdQEY1n8v+dLZaHvHfDyqgC04UQvFEYkL0iVEjWLFmsSkU3RdqM+lv6eJPlKsfZZJo
 V2U5I8ZZfySoMK28rBSpL6Qi9hZ1hBksNdUKrrlpCgVLxMi5EXSi5jSaVoIKprkgosd5
 tsDC/ZoH/IOGHUHa5cOqrpght5pR8sZ8tAU7KkBzmrV/NVIcLC4BYWkLn3qFk7vMY0dG
 3cUuGjOTM7lrJfGCwT9DuQ2es9Hy/CCF+RThAtg047ML104Uh1CTu5cc9rYcPLtsT3GC
 B/ZdafPWXHclyQ++k9xdn+0fxAl7T0KV1vSnNRH8BNknm6iXsf0sfW0O3mzquuFtLaDf
 naeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wq116TZAe0p40heVVDfMLRBuWEj6xKtwx1Np2GXHzlk=;
 b=i2hwPcTzsnw2hR5/P24AZKo4/+dr2og4z8hMpvcSKVPu0iBa3A4osbpY+kryYiYLcu
 lxUznb128Cm/3pAxAcFJeCySs3QXun0ecTn1OHCreRItqngn8mCA65+cpAryMq1rjf6R
 5hz1UIxynLe9r9wEMCaRLISr/tqCjsQqtLDQDqGUkWIGtr9Q7JolLam202fHM9RTAiwj
 bLS+tedCVDsoo4ZST2dVBTT3XHUPlVZ2nzC2xVVa26ewCmSgm7Ll0Txj7cTxNsrwutuj
 1jepwaxykujEXCDu21BGutoQt/XZALz90kuDwKsbly81UNFwhRonn3B+2802Rpk8XWMt
 t9Yw==
X-Gm-Message-State: APjAAAWsmOGvMEnwntq1mAJ8bmeLanydv34pnBF5qK8jydt+G1B/a4Dc
 uyIvWOFKVwJCa1LkeUD6CdEdhy7EhmI=
X-Google-Smtp-Source: APXvYqxia/hYDamKXklRlZ4uVwwfWKaRzmR3+FORgkBCwOjEeD6jP03Gwc0fSu+Qsj8bDjor8a5sTA==
X-Received: by 2002:a1c:a982:: with SMTP id s124mr6705085wme.132.1579191117317; 
 Thu, 16 Jan 2020 08:11:57 -0800 (PST)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id i5sm30424978wrv.34.2020.01.16.08.11.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jan 2020 08:11:55 -0800 (PST)
Subject: Re: [PATCH V2 3/7] dt-bindings: imx-ocotp: Add i.MX8MP compatible
To: Anson Huang <Anson.Huang@nxp.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, vkoul@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 ulf.hansson@linaro.org, broonie@kernel.org,
 manivannan.sadhasivam@linaro.org, andrew.smirnov@gmail.com,
 rjones@gateworks.com, marcel.ziswiler@toradex.com,
 sebastien.szymanski@armadeus.com, aisheng.dong@nxp.com,
 richard.hu@technexion.com, angus@akkea.ca, cosmin.stoica@nxp.com,
 l.stach@pengutronix.de, rabeeh@solid-run.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, jun.li@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-spi@vger.kernel.org
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-3-git-send-email-Anson.Huang@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c2c3d925-a69a-d7f8-a58a-5f4abe46960b@linaro.org>
Date: Thu, 16 Jan 2020 16:11:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1578893602-14395-3-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_081159_558156_DB04C4E2 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13/01/2020 05:33, Anson Huang wrote:
> Add compatible and description for i.MX8MP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied Thanks,

--srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
