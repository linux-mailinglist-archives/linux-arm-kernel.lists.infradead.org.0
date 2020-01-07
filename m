Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFB1132F6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiC6HV2evB2fnG4nzWXQ91tmemz1Sdxx4jkiqGfL/mU=; b=n+gtyxC62hafvR
	BQ/yj3i9SHaESW/TT6xWP2lMAI4f5hS+XVwcbRcuM/ZEOk0RwtkjX8Li3FtzPubXe7o2QHx4Sj7FQ
	cXMr3T6vdU5JHXdVXV7UBRLlfIAk2uizLOOE11TZ10O7/gm6xjEkLYb37Juwrgq0ZMrp77ZQBdO5u
	TzJGO+w9tR3lyaF++vLX7vGdB1LP8BwGtLlq9ObOZInI1JgOQE1+nlLLesCzz5JH+/3HG4EIdd1qK
	Q58r5UdmiFZI3a5DE5gChdC9Iv656j9pVExZKWTUNY8t+znEjIB+EOYa5BWbSfLZLje2CfJ489Q4G
	jb8AbDqGP1pnUGhsgTPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouXh-0000B1-JU; Tue, 07 Jan 2020 19:29:29 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouXY-0000Aa-Ov
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:29:22 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b4so232947vsa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 11:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1moPzDSwxv5Wk4/bKFlXZM2UuyFmVUd4X8vnm+QNOSk=;
 b=OOUxX0oEy44entYgcmt+C+QUp4NoNSVCgfdC0u3KcFj3f6Bq0b5K0kC4KRqiPTnINQ
 w8C+KNLSWVaaRc6+XDEwphWKrsT7+Jts/XVk46uh4h4eXaXZOXH/utvcVHStuirfIewH
 hucoZWNvBRnljqP19C9jQwSY0P0l7/uin5bsbwKocdbME+nmQdsj5moc9ZXfdoY6Qqam
 +GYT/cY8KjOJO6p5SWHsISC0DvPg0HrKSkq3LSyw5sRY8x0IUcdgLdbmY/4Bfur2LGCd
 XuGjrAD1dCJYbdTEPtT+ySQLYBA+TYp2WdiqtxXj1i+faN+qk+nKdHfM6VDoJ+cugq6C
 Xu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1moPzDSwxv5Wk4/bKFlXZM2UuyFmVUd4X8vnm+QNOSk=;
 b=Dp+RSAy/UTajWCAEPMoLeypOAXpGcVUyItrJIEJJ65QiLq1Q4qJkC87np/yth7zZCc
 2W0RZpjpkkbd9yl2e+7df+fBFJGbUOZJBO1L45Vi6gTxQZn77ADIi9z66EYcXAZ/hjgY
 9cN2CZTUyPUUXIYaVuMHTQGEBp9fboGyPYbF1JwKpCSqxzMprgJ8t1t+dAH2DCOns0GM
 7S3ow4zQKK1tMwN1arW+RJl24JD5yKT57ZSkonuzxcGM/cwiJjOfJgt8UZFWiUKT1p0f
 BU5CpyRkGm8a1+8rpdK/VDr7hgln8BbNoAUpRuPJalXikm8iE3IrqTlbLSJrdM9kz5Bu
 B0EQ==
X-Gm-Message-State: APjAAAVW4IYpMnJGFt4uWr6TQ+Fd6qtvdii6x1B3uHOAOkKTpjCit/PY
 E93FJfg80a3OLLt1gKxMHnXZNGW+BkS0RMdVheOGDw==
X-Google-Smtp-Source: APXvYqzSihib4LKAdw/4NDt3HQLw3pZ4ua4+q6rmirrwDRxgfbefNjou9wguam6xGKiB+ax0Wwkwf/8arMg+sva6DcY=
X-Received: by 2002:a67:e9da:: with SMTP id q26mr601448vso.34.1578425358940;
 Tue, 07 Jan 2020 11:29:18 -0800 (PST)
MIME-Version: 1.0
References: <20200102160820.3572-1-ulf.hansson@linaro.org>
 <20200106172608.63qhvwr5b7jsmxmg@localhost>
In-Reply-To: <20200106172608.63qhvwr5b7jsmxmg@localhost>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 7 Jan 2020 20:28:38 +0100
Message-ID: <CAPDyKFq-ueSK2xAOBtec_N95sBVf-Vcm_-xgAhxQUuwAjUzbPw@mail.gmail.com>
Subject: Re: [GIT PULL] cpuidle/psci updates for v5.6
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_112920_946615_571370DA 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 soc@kernel.org, arm-soc <arm@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Jan 2020 at 18:31, Olof Johansson <olof@lixom.net> wrote:
>
> Hi,
>
> On Thu, Jan 02, 2020 at 05:08:20PM +0100, Ulf Hansson wrote:
> > Hi SoC maintainers,
> >
> > Here's a PR with updates for v5.6 for cpuidle/psci for ARM/ARM64.
> >
> > The changes are somewhat sprinkled over a couple of different directories and
> > there is also dts update for MSM8916. The main changes are in drivers/cpuidle/,
> > which have been acked-by Rafael [1] and Sudeep.
> >
> > If you have any further questions, please just tell.
>
> What was the reason to bring in a dts change in this branch?

Convenience. But I am not usually sending these PR, so feel free to
tell me to change.

> Bindings should be
> stable such that old DT contents still works even if drivers are updated to
> support newer attributes, etc.

They already are. No worries!

If you want to pick everything else but the DTS patch, that's fine by me.

Do you want me to send a new PR?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
