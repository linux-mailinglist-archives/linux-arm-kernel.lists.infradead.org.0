Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429BC1DE46C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0UuMV4fnFiC3WPpori9u+P5/COSTvvaBYF8BY4Ubu0=; b=Em70AaeZ/mNIdv
	C9slyU+3jCr7hhU8y9SetK85RXRsg0vO1a2ufaKGH9rva3rd1Lc99uCdh3aVdDkaCUuTnr1P1K1yt
	RwRkaIbVPQi1FBEqX/AnylMyviGLrzoO7/CmIkweOiRd1f4Nj8xWKmUPMY+F9KTr9flkkL4T7144L
	MXd1fM5moysLPwuniJM48T9xwfxrHVuF1fjGQQnjB5R/hht9TGn0lxIFO8H1cKOuetXr9dWx9hRSi
	9Rrr3q0H5OwsnF/0fB6pjG1ADU0NJHHi8T1ZNGBeFESNssv9He1gRmMnILoiQspUGgOExL30ngtTC
	0mHJ1LsKijkCREbrKYvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4vh-00064x-71; Fri, 22 May 2020 10:29:29 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4r9-0007tD-SD
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:24:49 +0000
Received: by mail-lf1-x143.google.com with SMTP id e125so6244397lfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 03:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fKfCBTr3t9MLCQ0J7OL7a+qWvpib5l9QLHxm5yO1R5w=;
 b=DLPAj5CqPOJrt06enKB1ajI2NDFv9SufvT/yTgLAfjpMrZr6oFlggLT8lcqC29rl9t
 GZUftu34UAAOMb7Rg8sQqIRMQW86faW04AVGbmaN+KNh+aHKolxikQ3th4gwg6fAX5cp
 4JSk2b201knvWxlgX9KV57jVas0yhJVfYR/1H1HrbrSScxOCbvx+WBZ2XWJAzrSiQxHC
 qG6ALBdMJSMtjAP59+7gOVZSwtKNFqbI3aEXEOT9urqfWaAOcOuTs9NUVhgUp0awvr2n
 LtS3rbyGNcMspVITcsFZLgoRx41zfo6QMAZSgygb3FZ8xDvdfCbbTEx0LrZJmn8DUYjU
 t0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fKfCBTr3t9MLCQ0J7OL7a+qWvpib5l9QLHxm5yO1R5w=;
 b=VjDx9VRmMjuWwsZNmbqCefOUZY/krkt17UkOdBTNPIRrFf5prgkaRPgsyrF8Y8XpiJ
 PwOCe9fgbXDID+WZAZHCqMjwEIXOWyCs61cfs0x/9Ad/E86E34PvrFigq0anw3LirmCx
 LXstDJWrl6MsNkn5pHJETnjcjp5NCgCXpSm6GxynexNVW/DCsdAAH/vPPFUaQ9GgGh7r
 oexaQXAJI7VYvlwo6aY/BQvR6E7A21NbXclzAV8crZLqi2WJiy2hmwc2nRVZE5LmS9zi
 JhUQK+ABjaBeYZKcuMkfNDSEu/FU0oTieXaDimpLOsxiyjLI+TYHXUfoc5kLW9AXqm4F
 Fdbg==
X-Gm-Message-State: AOAM5339jzXW2tuRovvDLVr4YmvW+YWSLX4A6om+E7gbKKcrTuDfwDmE
 yw8zwOFOS+A5fMZZGBabA8zqfGrKC2CzHtjr5Ao=
X-Google-Smtp-Source: ABdhPJzAE9qHyplI74KdB5AD6oGUghscmd0IOe8zTZzcr+h2CPvEAwzkjjnL5jblpWGxXa2/Me9+fgzuIQyHXzThdww=
X-Received: by 2002:a19:6141:: with SMTP id m1mr7281542lfk.7.1590143085555;
 Fri, 22 May 2020 03:24:45 -0700 (PDT)
MIME-Version: 1.0
References: <1590144291-18526-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1590144291-18526-1-git-send-email-yibin.gong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 22 May 2020 07:24:33 -0300
Message-ID: <CAOMZO5AgAYgxb9djwGXdpMme4aREYiGPXVa=x0Hb5vo-KJGrug@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: imx8mm-evk: correct ldo1/ldo2 voltage
 range
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_032447_926139_DD8E635E 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
> Otherwise, ldo1 would be kept @3.0V and ldo2@0.9V which violate i.mx8mm
> datasheet as the below warning log in kernel:
>
> [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
>
> Fixes: 78cc25fa265d ("arm64: dts: imx8mm-evk: Add BD71847 PMIC")
> Cc: stable@vger.kernel.org
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
