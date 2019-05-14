Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193F01C930
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 15:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drMhY5UC7vwgBIZSiiiCc1GiWhiRk+jrM/ei/H4U9hA=; b=DXzrYID7oxkCic
	G30vpKWToWMAMutTe0yL5gSb8O2Ak+TeEiJC+RsIuWUxvWQtKsqreQG+X588ZXOmH8T3bSQ++h5Fl
	exjwDkqN31bgmdixPsqQuos38M9XNgN1WeGBg1TYuBfix7h/4wUS/Ljd62V+WAxfxgAbmQF0Yblm4
	99qtltnz0lx9R+McLRhsYzzp+AMsQRcH7mYuOEDcQLgTOb28QNQafs+AOy4g1xAWNCV2ejMnUCyqO
	v1he9kW6SB0pXpeGoQsFFjqmVQUT9sUP2JkJvdVlCTKp2Y9u6q10Z4vPWOLRcEgPNjIe3GbCCKrqE
	0XGW+CKWtVrxjRuB41Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXAk-0005vi-3A; Tue, 14 May 2019 13:08:46 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXAc-0005vL-PW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 13:08:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id j24so13444757ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 06:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jGnWaeTdAGYVob1R/TxXevTDDOUSFKjgVCqNbbE/1nI=;
 b=hz3x2Hx3tvoY4x19hxjgKQPiNUhxFg13owl7/k6Ky6dO4KK2ca5+M2T/ZQAHHSZThe
 xIwgSLc13QESbL3hNX+o5utV03dRJChs7nOKk6wkDO5elb16VMgToE05vxVoHrSD0yoL
 wABAYKND66EjSnJljB/B9NcK7jayPwmR0lvS/EA3rYOLZ0RgNQDRysBwK/VkBtP/rZDu
 fpeYAXJCvJ/wpkfEqBrurLrugaGUcJWi5Gg5sSe+sTbPk7iJLXpCd0hDsQ77PQ5vCPhL
 Bn/CBBeO0ID0BLatVCRMm/lGrg5qSdZa628QsHlslnMeW58ygsZykh2ii05BeCZeaFJi
 gQiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jGnWaeTdAGYVob1R/TxXevTDDOUSFKjgVCqNbbE/1nI=;
 b=QssUeL0LzaadlW+WPV0gBEiAVOBXOKjPmQwha+kNzheAfn/1P8dm6G+/1hSd//PjWS
 m2Ss3Jvfv6bTEgfHNMWU1NFbyR7oQHDdAKvmS+bFypPewqJz2Y+Ah3FOiBpgZoxsNPHQ
 /XKUz9VnTKXwGL8Tn1Utb1TLuFDdMGXgM4dYIo8iiyLaCMOnpguMTGShwhdAL+M15abI
 9LsTmWydn8r8UHXrrinJ75yHIBv50DK9FIEctTxV0jaSCR2maAWZl2HzRtqu031BGdt6
 mtTGVGeZVsgmV219p/XKkUXx+rT1EVevYEwATAhQUUsjVWSwP1iNlI1HsmxX3S+5gZr3
 6SVQ==
X-Gm-Message-State: APjAAAWVyHQgf1jTi3nBLqMR3N9yjU83ZjWw4sP0vSGh5rT7Em9h42Xr
 457VlUhcRw7xTUvYMt9vVl6rA94qrkOXqgS9pHk=
X-Google-Smtp-Source: APXvYqwGecBzbpfdMXAIjdCxJTDl5Ws8nyl0nWjhHtCf7epuYAKPy0fZvIPVELRzmMR4xkE3iE/POW6O04b/VHIW07o=
X-Received: by 2002:a2e:2b81:: with SMTP id r1mr15614143ljr.138.1557839316690; 
 Tue, 14 May 2019 06:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190513202258.30949-1-angus@akkea.ca>
 <20190513202258.30949-2-angus@akkea.ca>
In-Reply-To: <20190513202258.30949-2-angus@akkea.ca>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 May 2019 10:08:33 -0300
Message-ID: <CAOMZO5Dn4sVJx3UPo-WXMen9N36CiBvq3i+GosJ_4FGZ7jnTqA@mail.gmail.com>
Subject: Re: [PATCH v11 1/4] MAINTAINERS: add an entry for for arm63 imx
 devicetrees
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_060838_834415_6988AE89 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 5:23 PM Angus Ainslie (Purism) <angus@akkea.ca> wrote:
>
> Add an explicit reference to imx* devicetrees
>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>

There is a typo in the Subject: "arm63" --> "arm64".

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
