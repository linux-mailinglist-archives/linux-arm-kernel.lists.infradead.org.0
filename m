Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11B0A93E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OVaWEOg5HBg4fTGN7WI1lR2jsZ3NPuDK7ugSa525s4=; b=LuJcPnf0FbVUlZ
	3rd6g35R3se7gDZpSrCYYSz1hYmmgfI+Ktv6To8bCWgeynYJupxlppJLSfKJuwN6pDKYjWfV1xCPr
	W8j0Ru2sHHBe5qioI6qSdN0+bnxdkGKDw328pwtdce+rcChmAmXUk8sKSyY+QQv4PitwCOd/0pYWI
	jzucVErjMrviAo1p7Sdf9YUkb0NC36m7rnZoaP8Jwrb9/ZoM8C029Q6+4Lripr7KMSvwTclaWDyZg
	L7v2h3bc0DRnGHmzfLM+79kCKwiYecPe/gNV9/rD1o+Z6RxktBZipHV4sI5KSSqvGcePvOKg9tDHO
	J9a92nnkbCQvrNT1vWhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5c4F-0001f2-AU; Wed, 04 Sep 2019 20:39:51 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5c43-0001eI-NH
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:39:41 +0000
Received: by mail-qk1-f171.google.com with SMTP id x5so6910215qkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:39:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uq0zv2UkiJLjMjjKeNFbujc9fQrnyLYzOUVctKFpAkM=;
 b=Db6Id0EWnwdrtzk9cWrHWQqEk0cJPhx+0Ic3PebHtDvEEx622jvYd9d5k/F3ievu2V
 nxTmkshntEuI1qCyQkR24J7/yPusXB9zIia8+LYv4mQA8WYk9ayukudG6z0rvIYdz+l7
 mh639VOwm66bzv3qOh4nphwA9i0f53dA8iXeCoSuGXY7kmN2JTNMrhe+GIiXsDrhI2Y/
 oYBxeUD7hrYBAPcSX6QlK19WCiyAjNbFdL0j3SRkilifUBXipgKRpdACKTP3AShmHGzu
 4u+r5ZpAGSxjrslSjB/w0B7vllbWv+sgXAfNuaFc6g6eM4RFy9b3wyUOE9WBPiPyQ0Rk
 35MQ==
X-Gm-Message-State: APjAAAXUyOZBZfu664ce5egJDP7zitYCrzoxBdYbGYbZDFYYvOI8t80z
 CNLP7GeJxu59+YUspfMxbFfmCRnTtd2VuYtelIc=
X-Google-Smtp-Source: APXvYqz8lBuhlOPSvE0tDe5CevBPyAHsWAlq05grbhyPia69P41xYFoLaGo8IrpgS8oFCmKZsll/AUJSZYswal64Qho=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr41439228qkb.394.1567629578540; 
 Wed, 04 Sep 2019 13:39:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190904175002.10487-1-krzk@kernel.org>
 <20190904175002.10487-5-krzk@kernel.org>
In-Reply-To: <20190904175002.10487-5-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 22:39:22 +0200
Message-ID: <CAK8P3a3GKUXWoJvSj_g=Dqv=RZfpFP7vsTBCPC_ts6S5BBTBkA@mail.gmail.com>
Subject: Re: [GIT PULL 4/5] ARM: samsung: mach for v5.4,
 second (replacing previous)
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_133939_753517_B9CDFB3A 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 7:50 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Samsung mach/soc changes for v5.4
>
> 1. Minor fixup in plat and mach code (S3C platforms),
> 2. Enable exynos-chipid driver to provide SoC related information,
> 3. Extend the patterns for Samsung maintainer entries to cover all
>    important files.

Pulled into arm/soc, thanks!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
