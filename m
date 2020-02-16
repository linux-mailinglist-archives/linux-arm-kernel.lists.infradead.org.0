Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F975160404
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 13:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EApZ2w6TZvK4wVNliUU59euLGuY/8lRxcBfCz/uWaRU=; b=O+dU5q0f/UIhVN
	wLrMmO3pANoSy8tSRT1hFVNRubiJjTO0WJGpQrAU64qa2h+yKSO7AaajWcecaOdmnOSvgyrBOaLh2
	7c5OOhH5o0T2lfCmULGs43d4gj7zw5Zv91n3VA5yTU8UgtYoHYNj/ofMXz8M8Z1JVUH12jyqZ/0fO
	UzbJihGSyUEytmbAKJq1iZnD87AfOOMRk4PbL63HVBM0TSaahP+KKm/6zgoyCRFJQtSrjxyJtJgje
	323uYS7rZquDopOnbFIarb3S0g5tlsHOMwsQ4pqW3Adz07/ZNRj2u4p/TTf2NB1sL0VHHMbKgI5Xn
	nqnBK1D5Lvy41cUA8LJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3J08-0008DA-MU; Sun, 16 Feb 2020 12:26:20 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3J00-0008CK-Gd
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 12:26:13 +0000
Received: by mail-qv1-xf44.google.com with SMTP id o18so6423267qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 04:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VT1MCH4MKCO4J3DHnKFfEi79z1Rcq0/doyUc8eW1WIg=;
 b=I00CfkrKUYn4kwX92cS4aOemYsVO0HeOkBlsnww/ARt0TyMdfV704tvXZVmr3y135v
 7B7maPUxqjxk+NHzmqU66HaLmGnu+AXFTYRCRj45wg4EP6XkbcY38Oc5FVMyW4l3qXzA
 IfU/ip8psn47Zfilc8NstPx42Upvfo/Js4+kT6liQSnLJU0xU+rlYrmuG/9mLtGtuS0z
 xGF4IGVo+iQ1rYzKzgXKkeZ7W4vU07B8Xqs4IjtXSIB8sfMthR4J7LYBjh4UI1UA6Llq
 8h3OBLZNTMoualUfMGR4K8xQF4T0pePBDInffZ60+bHGE+GpfDb8VX6vpgF0wMxifs2C
 r6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VT1MCH4MKCO4J3DHnKFfEi79z1Rcq0/doyUc8eW1WIg=;
 b=ZRMJMrbwBsgI3dvwaROI9t5+dRG8/CiTZxWIX04xLeN2QhvVuL3lvQvTmfdpeKAs2X
 IYI47BBbkQz/Bk26OwVeQQLOf6XdGXRKgsyOk1S8fC3TiISHuJIK4RM0KFBuZwC8kBsJ
 B21YM3ms6wfSy1oCqnEWMVSd9uXN6P0IWyJT5Z07EKTQ83kZxlMVkMjdm2jptY4xijP1
 0EZnsn5uUCfI7OWj6IN7pbdOymgWrc4sgoQjWJoCpK+KWuoTkKbdJnwlBKPWKzedrl7g
 /Vy9oPURSmC/IC5vV34D9gpR1UuPdlAdUGRD4n5LeA/Wu4MApcAfhcRydB5enybZJFLc
 r/nA==
X-Gm-Message-State: APjAAAXsFvPC4J4MuPGfCBRVch5niDegkGwhVEzI4o1+IyuzZV21Fabi
 LRRlkAglWE7Nadfk+FVTXm14Vg==
X-Google-Smtp-Source: APXvYqwsIZcqP8uoonoK8c9iwZkXabkXrwTYXi6aH0V8kn6Aef+nS0HXqu2sxB1kxJx6l9vufQT11g==
X-Received: by 2002:a05:6214:1750:: with SMTP id
 dc16mr9131678qvb.47.1581855969601; 
 Sun, 16 Feb 2020 04:26:09 -0800 (PST)
Received: from localhost.localdomain ([179.159.237.245])
 by smtp.gmail.com with ESMTPSA id r6sm7011857qtm.63.2020.02.16.04.26.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 04:26:09 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mq-phanbell: Add support for ethernet
Date: Sun, 16 Feb 2020 09:26:03 -0300
Message-Id: <20200216122603.8164-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200211134828.138-1-alifer.wsdm@gmail.com>
References: <20200211134828.138-1-alifer.wsdm@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_042612_695498_441CACB0 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marco.franchi@nxp.com,
 festevam@gmail.com, Alifer Moraes <alifer.wsdm@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested on Coral Dev board.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
