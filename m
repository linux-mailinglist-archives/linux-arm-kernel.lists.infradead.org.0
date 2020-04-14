Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609241A7B4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMmqGuZuAwYVOviQPiKQ1ASQkz6TG3A28aXmArZ+YUE=; b=Gj1jsLTzGkJdzx
	c4DNFfKGuGvcbjdyuGOl9wK6Dn3WIAYIDwtPrHfnEmHnPHWTGP+bQbu/VlUen5ljCPyChLZggfSpE
	VxyZqy/eUEH51AW0h5WCPfcVoglY3FWZcor1Vfby6dU0hPUjOoSKM6F0g8xem18xMcrsuo2ZveFEG
	m0KE+owPsFTw8rylZQzU1OjJ4LJfbPY/HoCxjw+30vNkEHUQnm0vdEWTem6QUtGtS6ll9O2JpWWUA
	Ug/GASnbifCryQtlyVJZz3FCuq40caSQ1ImAJAk4pQbE7PKpwK2Ge7ibyVJxz0/oo6ebaErlf8/us
	0vvOWoIi6B5X5RRqgtbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOL2u-0005zc-0U; Tue, 14 Apr 2020 12:52:08 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOL2k-0005z1-Ea
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:51:59 +0000
Received: by mail-wr1-x430.google.com with SMTP id k1so6957994wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 05:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:content-language
 :thread-index; bh=INaiMxSFr4KNjl3DpxnWtwrHIDn60Dm1USBtEnWrWrc=;
 b=PDJLx9zi1OI+5VbYzQkd02uKzO1waQSh/zV5F3EvUj4R0lf428LvqkmNSdRd79LqxN
 yh0X6/0sK/jTdSuQbifotYjj3rhQz2aq1vtnVuNxbaP2fDl+wljpd1k8kfAXvU7ERGJf
 eMSnKtacrGcdgQJGOgFdKNPHZJlFU2gPZl9tcACIWKiMEhmBR66bSDNNeFXm+22SYGuo
 lfUmhXZ1J1d9b1G3YyWws1cHO5kNdsjF2swkcOotXYdE4xJtx2vRJxWdnK0yyKplYpSZ
 rt5eDjHEGFa+OX6BnSQ4Oo6BYIR2W/WrYq8wVh1dPt5OvweJz78ZBjx6r6xAJJKS8pw9
 +xbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:content-language
 :thread-index;
 bh=INaiMxSFr4KNjl3DpxnWtwrHIDn60Dm1USBtEnWrWrc=;
 b=RZCAYQBXAGj/bGDjTeYwjjnDoEU5T+4W6ZNwxLk1w2xsyROcBzH4FpcsAHTj4BMQIE
 Q96KE96azbSNk5XG8KB9/fIelLOQaJ+UJI+7a2q2/cVaSxY6N8M/1+/0/Qn/QLuYkMwN
 cm9yx4/5zXrJZfh6qbZAyqeok6dMfXwj6Hn6g3Gp3UMhWwKhHpIAsY5/u514CfknoKyb
 XuUSH71dCGSIcWc5CwjGR+kP0x/H+FOMTFeA7uy0SDZNZem5vTZrmSTATJEryDgSPug8
 fAxmimMCEfgsucCvemjDNQnaBtPHgD17Ybd9PKEatX6wkvlXQ52S/408IvznZNiMrYUj
 UefA==
X-Gm-Message-State: AGi0PubhXVM+LLtEsAgkdYeTCyhPBdfuxv9XBmb/KSq4q5EE/WjWluwZ
 PIo92yX4/4Yq0GjuV+sesTI=
X-Google-Smtp-Source: APiQypLreekvmOTIyJjoRiEofhwIQiv4aipsIMKjDOyMD8hF5sTi0Hn3DIqB4xhgEstTN6UiwtD3pQ==
X-Received: by 2002:adf:e90e:: with SMTP id f14mr24068876wrm.106.1586868716187; 
 Tue, 14 Apr 2020 05:51:56 -0700 (PDT)
Received: from AnsuelXPS (host93-255-dynamic.47-79-r.retail.telecomitalia.it.
 [79.47.255.93])
 by smtp.gmail.com with ESMTPSA id p10sm18476895wrm.6.2020.04.14.05.51.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Apr 2020 05:51:55 -0700 (PDT)
From: <ansuelsmth@gmail.com>
To: "'Florian Fainelli'" <f.fainelli@gmail.com>, <devicetree@vger.kernel.org>
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
 <20200410004738.19668-2-ansuelsmth@gmail.com>
 <26080c25-cda5-cd3f-a906-a09a79cb1922@gmail.com>
In-Reply-To: <26080c25-cda5-cd3f-a906-a09a79cb1922@gmail.com>
Subject: R: [PATCH 1/4] devicetree: bindings: pci: document tx-deempth tx
 swing and rx-eq property
Date: Tue, 14 Apr 2020 14:51:51 +0200
Message-ID: <01ea01d6125b$79590790$6c0b16b0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: it
Thread-Index: AQJxOzeYiZkD8UITQ1/aTwnouqE5vALuml4iApJiW/inFjd00A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_055158_516876_C73A27FF 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: 'Mark Rutland' <mark.rutland@arm.com>,
 'Lorenzo Pieralisi' <lorenzo.pieralisi@arm.com>,
 'Richard Zhu' <hongxing.zhu@nxp.com>, linux-pci@vger.kernel.org,
 'Sascha Hauer' <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 'Rob Herring' <robh+dt@kernel.org>, 'NXP Linux Team' <linux-imx@nxp.com>,
 'Pengutronix Kernel Team' <kernel@pengutronix.de>,
 'Bjorn Helgaas' <bhelgaas@google.com>, 'Shawn Guo' <shawnguo@kernel.org>,
 'Lucas Stach' <l.stach@pengutronix.de>, 'Fabio Estevam' <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 'Andrew Murray' <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On 4/9/2020 5:47 PM, Ansuel Smith wrote:
> > Document tx-deempth, tx swing and rx-eq property property used on
> some
> > device (qcom ipq806x or imx6q) to tune and fix init error of the pci
> > bridge.
> 
> Those properties are not specific to the host bridge per-se, but to the
> PCIe PHY, therefore, one would expect to find those properties within
> the PCIe PHY node if it exists. Given you want this binding to be
> generic, this is an important thing to correct here.
> --
> Florian

So where should I put these? If I understand this properly I should move 
this to the PHY directory but no PCIe PHY node exist for both imx6q 
and ipq806x. How I should proceed? 
It would be better to just drop this and add qcom specific binding to the
driver? 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
