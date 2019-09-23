Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D3EBBEA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 00:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MrUKeChY3Zp/2BABmKHD11vWDQz0xriIaeA9BfdjY9Y=; b=d4W
	8n4NgsS5TTJIfYO4UQZmIfbDsyP8aM3bk32XUa85kT8mMUyLBSgThEf9tMTYqQHkePmX11UXQXruU
	KTvVumFgh0KRjXuPsQK5uJ/JiFctBPT1+L9aQnW2H2aibOVdDrRi8NO07J7OEokUJqshWaEBqVHll
	eZB5nUzpMX5M0QLivFGeLW0/i0sYS3Ndm3BdzgweLMcWbwSrK8np341qpa1RiXdSOJ6vfGub/LlLz
	lRznxvS+vLQhkcf59gMHqcx+XBnQfiGhi6maHyKYvSRfWXiPfgAUA5oIewdnMZjHe/OR1DXqhnhl7
	AUIKcwqIpn8nUqn/wM+AdZGmwa7g8IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCX9m-0001Wq-Dm; Mon, 23 Sep 2019 22:50:10 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCX9Z-0001WP-1r
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 22:49:58 +0000
Received: by mail-io1-xd33.google.com with SMTP id a1so37648816ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 15:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=K/5/nBI2LwVM8sH5yu7LNoJ94uOcWWQp+DNw+x7Vdz4=;
 b=tMuULmesdBErrEgUTz6TCE77Sc+sdedCbweOkmyVB4qYh3n6XqWqMnCgrmq4KjMYxb
 yWB7CjJVxdvIhGtpb1+G5CkVuoJA1I+gEMr9p1cdls7daMpxNpK4oLIyA0VB5gFHhaKQ
 AL3n4odgzAeaP+HCOIlQq3yu8B8B88Br8hGcTBJOERA/QlbsZdlOCy/MbxjtG1ykis6s
 7nak85xtf7bTWl3JcoT3Rw/rnGYhs+MjpdXDygLw4vj1NVexptZXJzB3tQY7A9ugk3S/
 nfPLLKKrYTf6Q44MnmgcvhD5xkexV8wwaeASK4DNIOSbsvH6XqWKKSuDnEhuEcTQMjd+
 4NGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=K/5/nBI2LwVM8sH5yu7LNoJ94uOcWWQp+DNw+x7Vdz4=;
 b=tKIC5Fs+STgsWsh4TZF8lPC6wAYL1jb8Is7AZeKJqTcUHjVHvKY7ih7YvfvdKXaS2U
 qF2wnrrcXmhIaM1K73lQ+ZpWy5XwnGv2Sto2iz88x5sxMNMVahZDRqfU2EYHPRaqENAR
 8h/nr0kvoQU/zEd4ynWF19UJDi+z2nPKhSJB+LQM1GSUuPhU3wMopVqX84X7AWHUihmP
 La3bSd2dv7voUBjDnLrRWQ1wUH3wnaKfC3Qt3UeCxRWimlY/qckzvt6l+tUphyDXQju9
 Lx7X9ONhidAy7XROZBpHzHYxIXcbOfz9O8evqb5K8//5bgQEeLBeyzQ6AgoQQhQTMVDO
 5s8w==
X-Gm-Message-State: APjAAAU12p2Vk619eZ9KXM/cQuvMLXZEeNAIetoGNE0yJMpm7P6oPx2+
 1JfgrgpwABUAVhW6klPn12C6eHL/43bTWY/I8XU3Cp8L
X-Google-Smtp-Source: APXvYqwAFwVLlMGmxREpretxENWC42PqLSKJ375fNJWHO7xIqBoO4tdAjrPJtjnIeFyh7UFD+o9RLIdq8ZXTQeLztVE=
X-Received: by 2002:a6b:b213:: with SMTP id b19mr2010394iof.58.1569278990853; 
 Mon, 23 Sep 2019 15:49:50 -0700 (PDT)
MIME-Version: 1.0
From: Adam Ford <aford173@gmail.com>
Date: Mon, 23 Sep 2019 17:49:39 -0500
Message-ID: <CAHCN7xKxNZ6DXcx5Vf=M+LDE3oXrufRT0yC72jtqEN1R=G3qfw@mail.gmail.com>
Subject: i.MX6Q Etnaviv errors
To: arm-soc <linux-arm-kernel@lists.infradead.org>,
 etnaviv@lists.freedesktop.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_154957_120979_D2C7AC00 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I tired to run some tests on 5.4 and I was getting errors.  I went all
the way back to 5.0 and I get errors. 4.19 seems to work just fine.

I was curious to know if anyone is seeing errors.  I'll bisect
tomorrow, but I thought I'd ask before I got too far.

# LIBGL_DEBUG=verbose glmark2-es2-drm

drmOpenDevice: node name is /dev/dri/card0
drmOpenDevice: open result is 3, (OK)
drmOpenDevice: node name is /dev/dri/card0
drmOpenDevice: open result is 3, (OK)
drmOpenDevice: node name is /dev/dri/card1
drmOpenDevice: open result is 3, (OK)
drmOpenDevice: node name is /dev/dri/card2
drmOpenDevice: node name is /dev/dri/card3
drmOpenDevice: node name is /dev/dri/card4
drmOpenDevice: node name is /dev/dri/card5
drmOpenDevice: node name is /dev/dri/card6
drmOpenDevice: node name is /dev/dri/card7
drmOpenDevice: node name is /dev/dri/card8
drmOpenDevice: node name is /dev/dri/card9
drmOpenDevice: node name is /dev/dri/card10
drmOpenDevice: node name is /dev/dri/card11
drmOpenDevice: node name is /dev/dri/card12
drmOpenDevice: node name is /dev/dri/card13
drmOpenDevice: node name is /dev/dri/card14
drmOpenDevice: node name is /dev/dri/card15
drmOpenDevice: node name is /dev/dri/card0
drmOpenDevice: open result is 3, (OK)
drmOpenDevice: node name is /dev/dri/card0
drmOpenDevice: open result is 3, (OK)
drmGetBusid returned ''
libGL: Can't open configuration file /etc/drirc: No such file or directory.
libGL: Can't open configuration file /root/.drirc: No such file or directory.
MESA-LOADER: failed to open imx-drm (search paths /usr/lib/dri)
failed to load driver: imx-drm
libGL: Can't open configuration file /etc/drirc: No such file or directory.
libGL: Can't open configuration file /root/.drirc: No such file or directory.
libGL: Can't open configuration file /etc/drirc: No such file or directory.
libGL: Can't open configuration file /root/.drirc: No such file or directory.
Error: eglCreateWindowSurface failed with error: 0x3009
Error: eglCreateWindowSurface failed with error: 0x3009
Error: CanvasGeneric: Invalid EGL state
Error: main: Could not initialize canvas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
