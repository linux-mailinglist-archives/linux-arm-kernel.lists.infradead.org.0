Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BBA10EA9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZPNcILdHYkkEPKLyr7zXvXJbE+NnNgjkkQRqq+IP1w=; b=Hndcwg7rBPcGrW
	u4e1fOdFe9fr0IF+j5ILJz+1tDgc5bzu6FHlCuC9X5EvmJm0ipSbPRVdwbflpI7W3NgERVKaI1V1F
	O+ER+sLP6h4PVvPWp1aRosPAO0vkfZY+4ToOapHGsgsD2d/zVmqqzNSXs3sB1Q9LigK/LTMXg6vmX
	31s8U3JtKMqTuyBKeOmA+NIfKwnMx1PxDXvDLFmOt+Q4VzzwqWTiyxSDM9XFFbqPOIhN4CtmvIXQG
	1C7FFdsFHNY+rJaZDsoOMxNUioibyqJynM/rL0VxSoVArVKl+0B1T6njE+cUHH24Cg4vxsBGgdE5g
	x7ZJESMghA21ZTVWMoEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblWX-0001Lg-Gy; Mon, 02 Dec 2019 13:13:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblWM-0001GV-Qd
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:13:48 +0000
Received: by mail-lj1-x241.google.com with SMTP id k8so29488464ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 05:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IykrrmECcWJZ8Yrza+aM3nZH2RoiT6qQkuViP9pUQDE=;
 b=BJPQxe0lEpmHID0yD8bWHYfOVD/6frnYcmgDebP3QZi1BBMKGCitQs2qbLrJCHh8Wf
 3Y/zPC9PzIga1JvR/FxhQ6MgxuIMs+GCQlHF6TXPCpF0OahSAaRrG+XHrQun7SDdUGcp
 FN8Vn+kJA8UXHCcph+bd2Qn8qO9jDdfw08qFWPfJ8UUSSXWkUZ/nThd/kzUnRv3H5HTY
 g0plBwK3HIXOIA5zj01N1mR9wMRA6Kp+NyuzAdAGIiWUWl1tje6YQx4VoujL5WXAmr9Y
 NX6f4sjPC4mSOK50nV+/vx1G/7ZYYgTZuQiR/5gRROjCcUi3iJWuuTIR+rwtlR2UZXi5
 Sa6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IykrrmECcWJZ8Yrza+aM3nZH2RoiT6qQkuViP9pUQDE=;
 b=qun+YDFQ/jIy2Bg+JbHK6F7i/TjtGK8kGAz0p4WFJcGU4oKNiAC4GcQJwfKbcvEf17
 zdfFNTU5+ohnodgX68QFKovQm4EXSwTeZByoeMe5wexwu91qEuvKdyvfPkSjfZGYHsAc
 kXvYX6qcIXDOiNfA8bEf9fzA+XeB0kmaT/7WzbUzUE+hRzr1v79NYEtYX3BDKR9vs55r
 L4x33L4hcvn85MiFMLOu8wILSkVQ7MqkRX2gWONkjIl2Vxmgtk5WBZBcL+OVzQVOCpO7
 3FMxKKmtkc1flFQAFb4jQQDzSofcxU7AgDBjdEte/IeadgsmQWHMbjZF3QZoUexrma62
 C2JA==
X-Gm-Message-State: APjAAAXSuSN6X3+joOHzHHnripgNO7d9iO+cYuy1QPpdA/QR/8QXWhkh
 4408hXkUOcpTBTBChB22UbTGKl7eOAJVTPXaN10=
X-Google-Smtp-Source: APXvYqyG3irj/oc2zGFJdL+/sg9XQ0YQklFYr1CJcrudMafr6jCYzQUW+ULTJ0E8G/OZFyPIXqXa1XTrZ4Wo1qec8ss=
X-Received: by 2002:a2e:844e:: with SMTP id u14mr33009484ljh.17.1575292424890; 
 Mon, 02 Dec 2019 05:13:44 -0800 (PST)
MIME-Version: 1.0
References: <20191029152337.23827-1-festevam@gmail.com>
 <20191202013124.GA9767@dragon>
In-Reply-To: <20191202013124.GA9767@dragon>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Dec 2019 10:13:58 -0300
Message-ID: <CAOMZO5CZuRUh4OAiouqy9u0PO_XPGSZ_vNpgSm7-+fcjKv314w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Document i.MX7ULP Embedded
 Artists COM board
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_051346_870054_20978BBE 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Sun, Dec 1, 2019 at 10:31 PM Shawn Guo <shawnguo@kernel.org> wrote:

> Please copy DT folks for any bindings change.

I have just resent the series with the DT folks on Cc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
