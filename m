Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C46951DF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 00:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRy4O542LaRg2V9LHtQkQOogcfQHgJHR7ntHLH5GuM4=; b=PBlT8FamuN6TZj
	A7P3GJK07XnzixqpYyBEsW5SQulpPs6dcqkMU1PT+nyuUGmAe6Cam1ceDZwDDV1yQQ8N1Z9rmEZV9
	lQxl8isggxElQh8sN6P3t6R5DH770+uhlpc57/X6xyhQnWrGeBlbpfEtcyWTvhLsf28nn4K9n/3c0
	KBQWX7S09dwIo+Q+5t05FtnK2T6r1cVDM8Bdl9pp99Y+95/brSVAYr+s4VOhDgciDtCCUbkdmqFAU
	ikBCbOdUhTA96tEdiAt9IiatA03vcpcHJS+h8I6cJh1vQZrhc+h/SF+Hzeujfq5OuBaGJBftlIJsu
	z3ak/T4LWmshBedvjr/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfXAL-0006Zs-9Z; Mon, 24 Jun 2019 22:10:21 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfXA9-0006N6-Kt
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 22:10:10 +0000
Received: by mail-lf1-x12a.google.com with SMTP id z15so11118487lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 15:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LhhVfDrREEcacsWd00iA0V8OqoBJ0apERHNi1TRB+H8=;
 b=QjydLotuGa2xqLBEYC2ul9ZabrvYGkmSEZ0uOU5ogMvoT5cJMzOTACp3uLvLxoyoiC
 WULj99w498hOFtQdyXio34y7xVPevRq7rAOqYS8fLDV843KofgnNpN92jeDaV/mlWTYX
 ZpRQgrGJKkHOBBej6IOtDj1wdB4wlKXtNDsoCULJfnrYGDBVUGoSUrbyihM/uXQKKd5s
 09g5CLmd8iy2/MkdMv889ppOzOY1f3SZrvqpEVYU9jhXxzwc+MuhVtnPWvgTxhL6C1zJ
 Sh+kDlUIknVTBjQwr2csdt8PFwKbaGuicp2qKE7vRS4Igiv+46f7f2qxrhWRDA4GHDa4
 LqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LhhVfDrREEcacsWd00iA0V8OqoBJ0apERHNi1TRB+H8=;
 b=XHHRceFQ45RP6NtHyEKjr0zIa7+T+PQnIk08GrTonrrp6Q6vzed4VMpTlMySmvhGgz
 M2OuhsOmLva0JCcox0gcxnGxzu6Z7oUl3yJ4XeI+ZjW05xMQQsBcfq4QCSuvXXv7/0gH
 gqLRCN6EwnM0MpcQZtMtveAtBi3x+94dltt+cx6i66a6TAWLq0G+qLNseRQiXHpfTIag
 ZZXntMRC0inHx0cSvxM4ZzJDwJqM6O+xlEidPk9UsRhgkpl4JaWH1t/+lVM0Ic/dSjhx
 RxlEloBDKfI5knNPrjR8sbHZhDECzXxMapHXOqH+WzEg3/y4VvtkXC2GJ2t1iwPDAY4F
 E2mA==
X-Gm-Message-State: APjAAAXYBkqLhnTBtPMAYTylbGOgo650GYk75rnSQmLXPFd9QaqgelI0
 Q6Yf6iT1udXoCFo0f0WLQL9lRTbMBZKwqi6GlBXLwA==
X-Google-Smtp-Source: APXvYqz4dqDdE3pjelAIpYdIaYEdUSugt+9zZub+F0V4ojuGDgBUOyuytfX/lFlgPEn4rpFBFxQuxclqI0gOjSHiHIs=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr12069797lfu.141.1561414206681; 
 Mon, 24 Jun 2019 15:10:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190618115245.13915-1-linus.walleij@linaro.org>
 <20190618123045.GF18776@kadam>
In-Reply-To: <20190618123045.GF18776@kadam>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 00:09:54 +0200
Message-ID: <CACRpkdaqKzF=WaRiDPi6XmV_=30=A2rigWLSjuFw=PdG=cG4OQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/mcde: Fix uninitialized variable
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_151009_690185_85E5B847 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 2:31 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:

> Thanks!

Recording this as Acked-by: when applying.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
