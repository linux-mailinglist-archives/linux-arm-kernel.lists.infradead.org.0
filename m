Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0045D110071
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0Lyo0YFbryNiyw/brmtu4j+W6eOZf9HK4rZjoi16idU=; b=Hq66qZQCZ9MbjQgwxZ6/AgVBT
	vwBRqNU3etCeYM1v6uO2LsIPTiHp+xPq6kqAY13tJEHtuKTQtEEdf4HmGDWaFS/pVq5vId1w8xJwI
	OBY+uw141m6yCqF5jnJmjHm2M68gZPd0/w9b2IVhw8ty+mXGevqat8NPZn0w1OhcCz52w9HOYViH9
	Us6S6CkW67CgwsGRzKZqJXL18yngIkHsbuA1kCbXSd7N/IL4tozyGNb7xZn71e3auxjKSmYfwLkgF
	uWBuuARSTVlWSGTAWjaWUnZTeLQpHvc3okPBO8x1omXuWZzNXuTGhELCBXYNISb6vcws8ETKoLF7T
	60gOEXSeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9IU-0004lC-4n; Tue, 03 Dec 2019 14:37:02 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9II-0004hj-EI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:36:51 +0000
Received: by mail-lf1-x12c.google.com with SMTP id f16so3181993lfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=MWlNOpLYUXyynuUbBoIlviu99rJXrCd1w27Szcg8nxQ=;
 b=boobbRiKrIPjTW6itg9nafPgOCtMvWmGC+ptOoIn5x21f/zUx5kM10rE0nzo4pSTyr
 op0gr1Irwb5qdB0agrw0bFdeZGASEocLnYXJF72RlBDdjxMKu706I6gXAFiscKk3/bWx
 KYM05YFPnzhzQ0uG1n/NEOW8XX5gn987+4RQqOlw/fQvtehhzWRRsqZzeyr7/5iFaOtA
 JKk6/1fXdf9O0PT6UXfkYmrglOdQLtSbfU2f1+UDQCE3lDTSIyDQfUfkAB5nhpNXouAW
 VTuqE7uRpjx2Hi0zA+r4S2sDwaC7FCWOB8WVODyAic0sGkujN1IuRLS6v5O2zeFYl7kE
 F/RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=MWlNOpLYUXyynuUbBoIlviu99rJXrCd1w27Szcg8nxQ=;
 b=tvO4bT9ZBoAsdDMeX/dd8aGIs0M4xmAcYiuQCr/PleMHTjILDXDljUsjSmoc4OO7B+
 5tbKgrkZzA/JszqpZU8oPyHcZjmUZpsPIm4UwyER5k56SheNJUxYdMG7TcLJtB7j15ru
 TJF9znmxkZ8q4CakvFTHYluAMizj1RtAJwcbF9cVbZEnUAQYU4qzeh9x5j92Jbh+HVrL
 neMJSdfHDpviG5RNP8Rp6+R6YxnfkpTHa2g0Q4AtChVRYmbTcBa+LmC3uXk2dQrhfhIA
 /JrzEP2oN7hPXSwkSWANj2IK5qt93zEWm+RYdMSa9z9wZhCHU6h923hos7nZWVPJNDFP
 UnuQ==
X-Gm-Message-State: APjAAAWPd97ILeXKIFyiOuAMsGaYP/j2RG3bAi0U4dbmw6K7g6w1yxjf
 W0h74p+K/4JYTNbK1d4+mH0=
X-Google-Smtp-Source: APXvYqxz+iqVJ1nXYsxcFQM+E9DEQaIYjcDD18Lb+xCZkg87RKMsYuZ0gozZM4Pc+YR3dILDlKilrA==
X-Received: by 2002:ac2:428d:: with SMTP id m13mr2986962lfh.64.1575383808313; 
 Tue, 03 Dec 2019 06:36:48 -0800 (PST)
Received: from [192.168.1.10] ([95.174.107.249])
 by smtp.gmail.com with ESMTPSA id l28sm1454032lfk.21.2019.12.03.06.36.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Dec 2019 06:36:47 -0800 (PST)
Subject: Re: Issue with imx_get_temp()
To: Fabio Estevam <festevam@gmail.com>
References: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
 <20191203101509.wte47aad5k4mqu2y@pengutronix.de>
 <CAOMZO5Cn993y9VeFN6hPO3-cfNnUKiuFd_rqAZ8htz=dO6t6ig@mail.gmail.com>
 <CAOMZO5BniszDhWKkoWY=P62kv9cY160r9P=pjpbSOZasxJvdBA@mail.gmail.com>
From: Igor Plyatov <plyatov@gmail.com>
Message-ID: <77fff313-3f40-6b5e-fe30-5a65a189bdff@gmail.com>
Date: Tue, 3 Dec 2019 17:36:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAOMZO5BniszDhWKkoWY=P62kv9cY160r9P=pjpbSOZasxJvdBA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_063650_511097_35370CDC 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
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
 Marco Felsch <m.felsch@pengutronix.de>,
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

> Does the following patch help?
> http://code.bulix.org/l3rz2e-982595

Thank you!

Patch applied and will be tested.

I will inform you about results.

Best wishes

--

Igor Plyatov


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
