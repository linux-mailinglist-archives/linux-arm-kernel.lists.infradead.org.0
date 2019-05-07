Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CD216283
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 13:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKSxcnzUuGzucXZ+bmK4r1301Jb33DQgvs3yFiA0+PE=; b=G67t+hGfkfkvLJ
	2N+RfflLWUEWk/xuIawr2e87GqwWGsF793LJs9YwyFze7GbcH9Elca6UReqOctFiC6J6orLnACJb3
	K9++1mCobQ250+s5anjkkGSOLT/B/RGmDTdtwsn1OJnSABepf/bHW7jidu3joi0/WpyUGmYR2jjz1
	7SeJ0/UpZG/V3g+3LO1G/pNYIdZGgSnx7votaqRWQgfYYY5FBu6eKkGImMqcuxfLaSTrK0Be4qNh8
	GhWtyuDDk6sdeKG2GnbiVCssbsNidmKGbbv+EZn3cnVKmWfsSV2+2kfXsfeCw6K3LsJQlXQw0YfxR
	9SAixF91W2tBClWj+ixQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxpf-0006oU-0A; Tue, 07 May 2019 11:00:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxmQ-0001uh-7F
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 10:57:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YjtHwqzPU8xEylQ1QLMPLWBYNHv5Sw8oZD7zCDiXH88=; b=UxN+DtNEeKLNKnkrv9K8QGXHv
 zxMiAfFLQEhqe0KZMisg5RCZX75nf0os2Ky7JfozFWtvNuF9AkC9ZidQbGZtUt1MPWE8oOc2Xc5O2
 HTXjQtoEJYy60m9RcP316rg2hOVucXlJRhEqfiKZlHDa5KBiNgCGRGY9ADYFRF0jndFkiyxW0G8Wj
 66nHdmA76gRd3/W+qUZxhFtSGbGv7lhkxzBuhXjy0SySat+Za/tMRr7dI6HO/Jhj8hYzlVXRbeKyV
 sEOUuyD2H3GUavYwwSt2dSJJdjdxN2hhiuq26pCzrf8hewkuVy6rY1QsXcMgIz3uNjc55GKdPcKh0
 s7HZued4g==;
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxmN-00062x-MZ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:57:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id h126so335233lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 03:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YjtHwqzPU8xEylQ1QLMPLWBYNHv5Sw8oZD7zCDiXH88=;
 b=V4nbBvrhR72gwdEOvg6FPjYcS2/p9Rv2nl/6uez8eqQck0PVSXBXoaX0Ek7CNWk7dG
 ZGy3nzRVBYah+0mQlT7HJKiHuL9eBfti7xuyWuDr92BiOxwFJUkEwWInuaaq6AiOJPUI
 Hu+P1IXZ4UbOnLvmIdm+U1gReostNde2Baz6aPJ8n8T8sc+i/MZJ7iA+6Gdl+iESYNzm
 5gGivn4Fo6EBHZ3F7rEU/LzMW62vgdG6JQ0WCjeNUZywxnwuI+8WAZjHHf28OW/Ne8wx
 rh9nGqUwDF7iAlqvL+yLJSDhpr3xGipc1Q8YborBiiL4hZd7JQqgdi0E0xJY5gEJFMQS
 Q6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YjtHwqzPU8xEylQ1QLMPLWBYNHv5Sw8oZD7zCDiXH88=;
 b=Lw3770lviD+ETiBip7ufieV60YaK4PwlHWT7RN+Sk6yoh6guqKSqpmmj61kQ3EdjrU
 zSV5gCh6TVf7vJOc1gOJycg1EkWlS88XtXzCX6/7NbeYzWIzFx2JUtKf7sCKKDhKD3Uc
 IzWk2Q1eA37gq8yf2pSgVHE5ROmSXc067aCp9dE5UN7/hNXVXCvxFeV0svfQ28d3u6Z3
 c80vMeafDGpwKtnUFDdN2qAp+C1bTfdNytz98fh5bKNaP5NgrL0R1xiy3sgEKIGV0gUQ
 +pRcyHLw+jG1OrY2Dx9mQVBO8UWhOY4dITetd93aY7972aR33eExkBD2Yc957u0Si/tY
 DBLg==
X-Gm-Message-State: APjAAAWGhoNps3OLEOBqQVwI0fnjHYuRMp50U7ZVA7K4zdc+RRMhFng7
 WxGULJtbA3aTJ0aTe012WgxkfovuRVQ/2+RFiw8=
X-Google-Smtp-Source: APXvYqwfrGIoOIUXZFxvGq62Rc7gZD+cHikfgCNLUQUOF7TElgsPkJWAemKr+OPz+Hco+iIW+BVC5CW/eTwz5D1vduw=
X-Received: by 2002:a19:c746:: with SMTP id x67mr15869198lff.152.1557226614756; 
 Tue, 07 May 2019 03:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <20190507034734.20622-5-leo.yan@linaro.org>
In-Reply-To: <20190507034734.20622-5-leo.yan@linaro.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 May 2019 07:57:00 -0300
Message-ID: <CAOMZO5D-8o25Wg1JW2rmWQepAKKGr5XTtpJm7J_qHJ8vLb-RKw@mail.gmail.com>
Subject: Re: [PATCH v1 04/17] ARM: dts: imx7s: Update coresight bindings for
 funnel
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065659_745665_8D172D48 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Chris Healy <cphealy@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On Tue, May 7, 2019 at 12:48 AM Leo Yan <leo.yan@linaro.org> wrote:
>
> Switch to the new CoreSight dynamic funnel bindings.

This commit log does not contain the reasoning for the change.

Please explain why you are changing the compatible string here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
