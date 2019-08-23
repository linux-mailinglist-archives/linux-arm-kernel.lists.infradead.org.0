Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4639A902
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWQSYN0+CQWe0KDCZRNU4tqA+yGXOUzMUM5uTb0A9bk=; b=iJEpCTZpkIiPNI
	pfhg/qNbGnT8sbczOwD/eDq/uoduE2u1OjYj44/1Cn1qNoeNFSo/72VSD9IB3jbCNz5TTbKFe10UO
	3TpTC3UO/LuA7G4YVFOSPwhNErOk5FplSt+X3+S+572dE6zEecYWVTtXoGbxMjQGMMXLeNMP17O0B
	9KF67q5uqnWojV/EZYk1efvMU+NVjKNjG1lWvqgOdH3fuFjVFapetx3B1vSWhkWeDazWO7IfJr4HP
	Rsh9PXjW5aAwCiBJSfYfetYPhmqztQtHBUIpXdLFceGOOfODWI/wQkJg5kv8XydaB6Z0dueqxJxGd
	nCyT5Aiu6BzEcl8Tl61g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1492-0006Kl-Qd; Fri, 23 Aug 2019 07:38:00 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i148n-0006K4-Q9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:37:47 +0000
Received: by mail-lj1-x243.google.com with SMTP id x4so7958153ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZZWCM1NaKkWZfHYdamHWGDCsp0daigJ/P9DBMZ7/h0o=;
 b=gnV+a8SbxnF8E7z2Tj14yFsvjUuIGqSsViiLQ/zAYEOipY0vHqYoB2FX2Q9pBj7Byn
 a8uth2qvzy+VzbI5mKAiM0vjBaR9exB16/ASG5Ddhfv8myEUUBaV67NAcnESCw6XGEYK
 oFsRP3hNBTbtXU7DMZdHowrtfY6DkD9y27XIUoOGoQbKnSVxe0iRViKWToVDqVCiNSrD
 1EC2EsLbxekU9X1hKemCBp9Upb3BVVc6Fa5SwH7ARexZmFgondpi+/1u8PgmTannFBIy
 LDqliBZWjE2ewubCbfQmU9vE2GMbIRij4CGeVQ544MW/Zc5SZtl2+01ffnjVd/XT4foa
 kamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZZWCM1NaKkWZfHYdamHWGDCsp0daigJ/P9DBMZ7/h0o=;
 b=pPwx5HWaPqR9a7BsVbHPc5kTs/6cXaT9Oe6BIMxV0l3lMqN9uNCKc04Sk+EE1xJuC2
 MCZvDp7Jxhdd7+ilmEXHiUb7uPY8EAdq3ky9tCVm9b07N2hHEL+1g1Dl0ueQ+bEhj4Vc
 gPNNqtAXT9GE3F7B2phgUCVMs3NQag/X8TnAzR7E5qDA3udWXcJGmVlN6+p1AcnF2xJ6
 PIjhBQAF3dCMqcTWRrlcdb6asVvpEVTr5N2ugAA2it/P3iCjSCzXxwIJfyHJZwiYX2CB
 7bHExisxys9nkX3QaWIS/kDHW72OikQ07DpLOMFyvdtl0j6YyOWPFIpEGvai1b5JjUnU
 XEKA==
X-Gm-Message-State: APjAAAX4RM7ejskFlfmDnYlsoYzHzrJSg0B1mif574FhgnN1+1cxKq6A
 rYnPBpPeSHkrbTcxNYEA1XCod4Zw4wHA7J3lCE0POQ==
X-Google-Smtp-Source: APXvYqwoTIF/Emnt9eBfMVVaR3D0yZcfntQldBQ8nXDMcgI62M2HujpKdWtwI9F1v3Vnmg1r5+YyulnqcRsz+8EBjBU=
X-Received: by 2002:a2e:80da:: with SMTP id r26mr1930950ljg.62.1566545863148; 
 Fri, 23 Aug 2019 00:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190808101628.36782-1-hui.song_1@nxp.com>
In-Reply-To: <20190808101628.36782-1-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 09:37:31 +0200
Message-ID: <CACRpkdbYEHQ=sYohxEC99T41qUBHYgBCYjM3MaAnD9PmY4YCyA@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] gpio: mpc8xxx: add ls1088a platform gpio node DT
 binding description
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_003745_861910_189FFB11 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 12:26 PM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> ls1088a and ls1028a platform share common gpio node.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied with Rob's ACK!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
