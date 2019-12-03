Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C099F110039
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MUelaKML4TEae9TmExmPp+qwA/pV/I/x5YZCyvQB2nw=; b=rW6wSjHwaPgFstMsWARXs/eAK
	NVU7hzFX5Rtkf8u4TCjcMQHukjmIYekkWlErjGKIkypA/GS72ZiaxcCizG3lXbfDxhhwcV+h4kopM
	+4H0x5DC0XUEj7R3OG9P/MrsoeH+UgqomA6WpJWqbW7eU9sQamnRkKtDG+iOT+7OLZcautKOiaa3p
	uAVbTuKYW5JIUciiR2O9Wr/MUYFYIv31pTPotg/OdrJXNJrJQy8WJ+CYSfkn9c1ebIc/r0Dqev0Fp
	6QgE1+g1QuA+p4bFjrj/hmATlApvPEw+yIW5PenUQb02JvMA2Nn+0tEJ+vQyOKdKarjx2MAwMUKb+
	v+QZghsAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9Gl-0002z5-Ct; Tue, 03 Dec 2019 14:35:15 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9GN-0002mx-Sz
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:34:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u17so4102433lja.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=M6eYxvrmGTgvLkHnmtaDrBAJscdJSkVSQQjq8E421sE=;
 b=l+EtDD0mmto9cjLtj65Q3j0IaYnGm/KLzNZuSMDoVEB55z/0UXMyoddvpqCXsqgZTt
 9SBqXWrpVo14hIcYuRGzC814fm+Eih8ZMdAyMdwNwahs4Ei0e+1Xtxcav82AAq6NXd0x
 sFX6cAydu1nv1O9C4vO00vYX/pqRfkHE6fy+5xzY9eH9D7G1uUiJycxYQNBuEgfvaSCs
 EUTVGVvKQH7oLcqAOnIvW14jv27u6lr6gjgrcIlwfJSpPOSXs4dyOFmVS0VKd+bFDvNU
 K4KDsHGdm4BDuOztsFeplbswtVRpK5zZBFIW7bb6XBktQW4TghuBK4DDJpdML+vZYOy+
 2bSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=M6eYxvrmGTgvLkHnmtaDrBAJscdJSkVSQQjq8E421sE=;
 b=aPoBLvkL1N/+Lg4QYVkltN4oQASGeUFNJn2eXcRS6kt7ZyNJjTEsClDaYkf+rHfmJh
 CcB6S2BSHa6URQQIukkF1WlDMrSWLyQQ9zIrDPyf69Mfzgaj3EuMwTZVVaFjakKoXDg2
 MHuujl7wEZjJcRXuzXczS8mW+L3IcyC9CEJf2D3rK/CPyZyObcjEChnQnLh/dqC64ymU
 YXDeq/hKZuF0ToThCdztD9va5UuJAPIs94oyOQfju7+nlwDKRva/sNCJf9qJtSc4NFRI
 1j1J1Pg5yvz/h7ldmJC7OAxn5pHzOCV/oJiLb7rBFCejzchrg+vbSH+SB+jThHTXAGSS
 8TVA==
X-Gm-Message-State: APjAAAWeZjnp4yCnopb8+P3udP97mAzb34U54tQ+j6nGkwSNwLd6e2dZ
 YeU4YNrq4B+nHmKIuO5q7W4=
X-Google-Smtp-Source: APXvYqxM/TOCCnbM2c2O3Dv/w38/MFFDMAoKmFjSGRwUQRs2Ew0oMYt823SYDS7D84H94ojX/PWVtg==
X-Received: by 2002:a2e:2201:: with SMTP id i1mr2743098lji.110.1575383688248; 
 Tue, 03 Dec 2019 06:34:48 -0800 (PST)
Received: from [192.168.1.10] ([95.174.107.249])
 by smtp.gmail.com with ESMTPSA id t27sm1493932ljd.26.2019.12.03.06.34.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Dec 2019 06:34:47 -0800 (PST)
Subject: Re: Issue with imx_get_temp()
To: Fabio Estevam <festevam@gmail.com>
References: <de442143-568d-5fbf-ed0c-d169e33e5d66@gmail.com>
 <CAOMZO5Aoj9pUpMdqVTG2pOUBUpnHsxA-Kduhia7_EJZvdEGjwQ@mail.gmail.com>
From: Igor Plyatov <plyatov@gmail.com>
Message-ID: <edcbf5f1-7d77-a384-6746-02154cbf497c@gmail.com>
Date: Tue, 3 Dec 2019 17:34:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAOMZO5Aoj9pUpMdqVTG2pOUBUpnHsxA-Kduhia7_EJZvdEGjwQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_063451_951590_EFF00200 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (plyatov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Fabio,

> Are you able to reproduce this issue with a 5.4.1 kernel? 

Sorry, I can test currently only with 5.1.1.

Best wishes.

--

Igor Plyatov


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
