Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5474E8AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 15:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHYgGvSq3rud9ta3J8CRTFkU4HILDKVCxA9+CXoIDRE=; b=jn5r5XV7fhET4A
	kKGt1J2yK+m6sRnSMdtHyEpBc4RNn6T6yPz7mFWeBImKCU09M2XVKvtcegQCwCV6dpwk+n1nJZLSH
	AYfdI4yblxv2PdIocwfUSmjdBfy+seFc6v71FehrdVuKQbemR6HnRlE4gaHVM163Z6qcBtJEsHaUZ
	obVXu1YkkQSzVBgXO2UWKnojAQJX3ujXtrRInq3KIC0hXKRzZ+WpuUO6IozWEJ0OL5agr6NNTxN8z
	jI+XTqvH9yvhOVum55t38Pzl0DJ+5LSUc6ZtaEkRYJQevA/x8W2afEhdl75eXr1i9slqp2uvQW7lD
	hR3abHbMP90JQRczjrtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJM5-00035e-GX; Fri, 21 Jun 2019 13:13:25 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJLs-00034w-AT
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 13:13:13 +0000
Received: by mail-oi1-x235.google.com with SMTP id f80so4635283oib.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 06:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xbpBRnqznlE1HEOg4PMUeAxG8c4K8U2mrJuFqdy7uIk=;
 b=sYcQzVQZGmYiospFy6xHHYqirJZOuwtGTHteF3hrd6HJFa37sB8QFbtoRb/FpAVZLM
 VHllJURSAsPdp9nJetdSnhmV4r+J4y6CQUG4Cc7iOrTMqhft58DyFYbVv5mP9dgGdYHj
 rrB6tAdjjoekHtnbJ5Z6WzAoz7MHo3txECsawROdITRy7LFMTh9zwM3nKakZVyDra2Oh
 NjzzbJc3ttcfEd8mXcyDyWjXc2iYHC7RgIhLYvUdXlPUCaE5OTM4gpQdIUs+r5ti+Rv/
 jyd/ChvkcoE3m8gyCZh4ye83hSi4y1m1xU+inWTdzNMFHb78HfKsJFBGPPeIurZJGiBy
 FD9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xbpBRnqznlE1HEOg4PMUeAxG8c4K8U2mrJuFqdy7uIk=;
 b=V6iZcx/VXRDKNv36vEIycLHUtUVPhaDJLR01WrSDoVcYNjSCzm2a/xrUdnM1eIdgV+
 7BfWcMO0Jcm1+SNVDX0GxvHbfxuaWTKwnaRRc5PIWFg2gEt9G7qDRb0gf22deOSs6xra
 LiHRhvOPVX22onyMHgt8rKbYFdkIauV7+eFYWxH4J+QtgNpJS5W2m5o3/irIhqnbqgEw
 s1GazGIFxzaipX75DU8jDrTja74/rz+7j7XyB4qQD/1eyke7oVa8J9K8U2hVSbeh2rFa
 ix+xi32MKugtEp8R/essCMKSPUa8M+Sk7JyXgdOhgwmGBLNWxfN5wu8kmNJekwkC95G3
 5WsQ==
X-Gm-Message-State: APjAAAWFw3Ewo3U77YLSvRwM9LYW6cBmp3VQ9rdI1JkVZif4Gv+79QD9
 lAiO8LpZ/8R+ATzvxylrx0xYeUEZCj6AxnIGisQ=
X-Google-Smtp-Source: APXvYqwjEBY5aO3xWboVF20/ol00HqPWoPQpKV6X29y5l3AWbmItb1r0IrYBUeVyN/FhaOXV+CYlu15nJASM4OMp+f4=
X-Received: by 2002:aca:edc6:: with SMTP id l189mr2559572oih.86.1561122782951; 
 Fri, 21 Jun 2019 06:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190621082306.34415-1-yibin.gong@nxp.com>
In-Reply-To: <20190621082306.34415-1-yibin.gong@nxp.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 21 Jun 2019 09:12:51 -0400
Message-ID: <CAGngYiWx-QML6XDG3LWRR-qHTmKeJV68zD-a8qSFf4SmH=nVzQ@mail.gmail.com>
Subject: Re: [PATCH v2] dmaengine: imx-sdma: remove BD_INTR for channel0
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_061312_366671_83DEC956 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Stable <stable@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Fabio Estevam <festevam@gmail.com>, Michael Olbrich <m.olbrich@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looking great.

Thank you for taking the time for this, Robin !

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
