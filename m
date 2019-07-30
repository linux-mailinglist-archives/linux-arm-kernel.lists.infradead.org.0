Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482AA7AD1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKUkucViGDxGJkXf4gbUA8k9zX4s7FkYxEYxE1DougA=; b=HPbDaoeULOBJvP
	Ed19SPJoG+NEejlfPqBcTEB+nOphl4Fy8sg60QlIZ/fDcAozB/dK2s+571mXAvZ5ejxotugWuRg8t
	dRKcja0ZkBpO8Dv1M7kpyRE/WqWTeEa1f8tUbqpZXb7TLc9LHrxnDZ4ph1E1ZtAGv8AWP9M2cgboY
	Fldqgmx5T8wWvdfmeP+Vqxlq82BS0zgFyj2nhpGByfd1gZLiNQVZA9xlwbzXYlev+DwGfO0D46X2X
	OqNIIYFJbFSv2ZkI0IcELei9LWVbsSDA0T7ckg/M2WSYUyXfXwdUR7kOunuSEfjCnqm/AxgzabItb
	prVW82QJUn/xjYnQzpxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsUXz-0006HK-Rf; Tue, 30 Jul 2019 16:00:19 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsUXk-0004ya-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 16:00:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so62618591ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 09:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FbWP76mrhorJU5Gh42fiL/ClcaJsatH+/BvxqeOmpoo=;
 b=hhKXb4VbvWawrVLus06feXu5xMqfwssq2twQz4cKGdYaiRbVbenv6hWl6Pqdok8GOP
 cozW8PrNTLsuxjp8+E11PWJ75cPVTy22NNq3xlAyW+HBLdDXda/c/4ygemrH++iQZZBx
 6IPUT5qjjOBLh+D9TFtoiVQ1Vm+R6wc1IMx+bdaob/IKG/qucWZ+Alm2xxFcX5KOah65
 EELKjTF0A/rU/VLuPggyU5lRrKsXXxB8xTqIgTGll37n7jvvLuMS8yMP6xqs27gYUpaQ
 VEEHDHdwfLPlwCBhw09jTokIpnrWz8ME8SUpSFeTbFw8/FA0BfQBPzPyI5uBiNHjKwOb
 bEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FbWP76mrhorJU5Gh42fiL/ClcaJsatH+/BvxqeOmpoo=;
 b=m8kKZxPq+YU+9fQszAgcqvfZGpDY9M28eWd8D3ldUSYP/0f3G25bH1Czv3hQpU5v8F
 NLduukPnwkHZR8Jy10OTuXcq+oL3RKAnuoiBkTtXnYfdaP2gtt7vU1fRzgeGW8tF6Bdz
 of1P/yH3xRmNfvY2KeOxjdJx7/DN4NYEgtk7t46ocZY6JhQdGbGTcqBU2wCF1LUHm03z
 UyGjoQIGenx0LpSFIK4JpH85lRy47DvaFMSE5cvIPKwsVrt13vo57aM6Ji8EjAs8exDh
 hpfyxuQADs1K2aI0u6Y6g7YSIrOOhYP31RIwMPM3Ku8NfSkYonzUUrbUD8jc6Mg89YuJ
 UipA==
X-Gm-Message-State: APjAAAXY+d+cg0Y+H3vS83kbhMBNqKVZdvV1mw+osc3oMwkwgw6F9y1f
 q5eJBk8qeKm40aHVG1WT/xw5VDSPK9dH5ERnQ3Y=
X-Google-Smtp-Source: APXvYqwoKwtYKco8BUfXu3fhhNLfUigpTR6OWIi4WPXK91dIOZ1Vmb9tPgwn8TOXDGj96mjfoE6Mhw4lIdCqQyDzD5s=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr61634312lje.240.1564502399982; 
 Tue, 30 Jul 2019 08:59:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190730150552.24927-1-lukma@denx.de>
 <CAOMZO5AxPHHobQQhq30fjLVeSroLdvdT0+GqCWi8it1ejhDONA@mail.gmail.com>
 <20190730175336.382d833c@jawa>
In-Reply-To: <20190730175336.382d833c@jawa>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Jul 2019 13:01:19 -0300
Message-ID: <CAOMZO5AoSCDCMRKpkWQ=0PwiFG-O9doGaA31FRhDCGmNr7Xefg@mail.gmail.com>
Subject: Re: [PATCH] ARM: DTS: vybrid: Update qspi node description for VF610
 BK4 board
To: Lukasz Majewski <lukma@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_090004_288711_03A880A5 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukasz,

On Tue, Jul 30, 2019 at 12:53 PM Lukasz Majewski <lukma@denx.de> wrote:

> Shall I refer to the original commit (which added this DTS)? Or the
> original issue posted to linux-mtd [1] ?

You can add a Fixes tag like this:

Fixes: a67d2c52a82f ("ARM: dts: Add support for Liebherr's BK4 device
(vf610 based)")

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
