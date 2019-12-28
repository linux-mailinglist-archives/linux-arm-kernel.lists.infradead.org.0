Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175E812BEDA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 21:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zi0Wi65iRhM9mjWTaiwYUsRKbuVthdjJYoOwRN8/jQY=; b=GOoZk3ZhMoDN7C
	ybtrT8uDqUUcDPFQAxtG3fHnZiuxpyqLFiVDlf2n1b7NOlU+5zqmi/lzWV4zTbeLXEQMgBhW/FcAG
	pmXX0CBaPpdBTipYtMynz4c1CaqfDBjE9PVJCitqXjPfgIUKXGJIhtrZAi0af01bGRga1/OHaBQCT
	seLxvNBoWLIpK2uw9n8W9HJILxlnpX/vsCi4Yr6Mg+WVk7gVpQmVxhcvnYi8GRZdZdk/lGQQIXevq
	uMAmPlRI2ysPYd++3bIs+CZgO6g/ZVQ/Oc7BIdjpJJIYFhP+C5q5Gg1o7L9KrWH74mpbUIQjbyxic
	ZuAogRjcBNQ4uCnetqgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilIhV-0004Fj-Ow; Sat, 28 Dec 2019 20:28:41 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilIhO-0004FI-4M
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 20:28:35 +0000
Received: by mail-pj1-x102c.google.com with SMTP id d5so6196420pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 12:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google; h=from:to:subject:date:message-id;
 bh=ELa/jGPIOrAAV05/eqnGYJJOo9NMRWnP5mBoX9xIpX4=;
 b=IPJ5n0EM9h2gn0hTw85cEkijLamqQMZANvY0f11Rb7GCcBLkXhPvItESGi6Jy+B04O
 3K75xW+FZ0x7EBLaJ92m5bJZMNHgNplsuR4pWWf3xVX9/QvjX9UaoiMRrdSTRvcRhyig
 AUU6mJX88Hc85LVyUBWs70WFRAvacjIBowUfZmAoo9Rlk10PTnhpyLKj+OYVVBO7XVWM
 VioW+rvsYOYS5VeVAaO7N9yZu6kCoBIHbdQrvbXKfivPmaEWZWag+labu984popL5XVd
 JzGy5S+bWdMzaImyab94AVZ+efefOvESdQfXAFeYIkKT6E/9Wt2QAKJMHyQzGjWdMEdB
 rYng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=ELa/jGPIOrAAV05/eqnGYJJOo9NMRWnP5mBoX9xIpX4=;
 b=NxFydwAzumqa8ocHA7+wb7lG/BYEvCoPfXotjghK9cbgx2C45duu0LIm82c6Qp/+8W
 77M3qeA2t3mf3CfRBYjPG4Xf/8OPCUdX0WqF3AwYpyrdiJNWaTaYyodh/dXIPGoYwmAt
 pE/TwnwZbKgs7wu/Ju301f/gqgvGo1D4uWuHZjUnHj1HERTSdle4qXajMJpE8HvjBeW/
 7qFGGa9lSq0AnVjmt2MGjUlcwU88FHaw6n48UjU/ARvOCP0XnH31NBvokNyZRvp04uV3
 v490a7GUnMOAWjQlG9TJWOqtZNssRhFCrFO90OAXD/IWw21NqoiSO76KAhSakGO7qQSc
 hz3Q==
X-Gm-Message-State: APjAAAVIlMQIh0gXKVocBPqWa77J12ApsbqiYyO1vJwznpbxigSeGnlz
 qjjHVgG7CGvqi5DYGmCAndXoXw==
X-Google-Smtp-Source: APXvYqzSW3zJ2qHck05XqAFkd1G9bQ0VrMEW3x5Q8jS46ws/4QQAvZnYXyr1CSz076R1vh0G01ToDg==
X-Received: by 2002:a17:90a:f998:: with SMTP id
 cq24mr33688998pjb.6.1577564912415; 
 Sat, 28 Dec 2019 12:28:32 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id i68sm46771169pfe.173.2019.12.28.12.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 12:28:31 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: 
Date: Sat, 28 Dec 2019 22:28:14 +0200
Message-Id: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_122834_176366_85F811FD 
X-CRM114-Status: UNSURE (   3.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is series of various sun8i fixes.

Currently I am working on bringing-up Android on sunxi platform.
And during UI debugging process a lot of issues was observed.

This patch-set is far from perfect, but we could start from it and polish
during review process.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
