Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87028EBB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvUfrpNPwjo6pVcM7QRk6Zo3tDKoJmhsq3OjL9L5nnc=; b=MBqYTdgl3iUEAg
	Wm9aNMGaluH9417OfRROTQCCGlOxOmr0DjOKa864umSKNDVqsn/q8uqGHROipyRGoaNtaxmCgUu/d
	HrDaU5wWKfWF4NS7gBpHrQzmOnFVV0WWEmqQEsuUkwe1K6tv4oClAudlyBsh18q7/e8z/X2K0lnyi
	YpdxzmNIC1bPgu/yEFETwJjN3yDtFJfNEkVkxe/fYN9/45ILxMYve73AxeRPemjcnElZH7xRE159w
	imcAVSWjPJ3nSmE6Dfu4z4dL1D7EuumVYfOZxfNJEmWqdKPzYi0RS2E2NHVly5gtUtLP7udmbnEa4
	vCG3l8mzZmC66DZhnjfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyF4H-00087a-8r; Thu, 15 Aug 2019 12:41:25 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyF3x-00084d-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:41:07 +0000
Received: by mail-qt1-f193.google.com with SMTP id q4so2174708qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yo+0qJyjEZTLgtLZ3AcpapDeK4XoFVEYvU/GK5gSGYg=;
 b=kb9NP82qxWRVDkvQk7P5+KdY7IClgmgzsI5ofi31wxBBsCgMXGMz64QEztYMQ+bdA+
 VofAR3vEUCzn91TU2ltRvjARkg47SOcTy+vKep5UZ5QDamayfYkmfAC35935hr49dHLX
 32PAPX0zr0e4j2hdavwyZFoGViGaYKJ4uHrT6F/+iqRrtLBN+A3TFbi447jQGJSxsB7P
 +dQ9Yxtb8CpjPasd4dh2ELPELmkgONVBzKANxOgyZicbcJovJiEOeSiCbaxXPWOAxrIn
 gDs1mDFce/Z2KIHinR+2r9rX+paeCWlsZDZIeKFA9YFL7FYNv5q3HTrt8OoFfGN+k20C
 tCPA==
X-Gm-Message-State: APjAAAX6EyTY+wTPx2nGnnB2gB+I6QTcnrED6dy5mwWbhNI5VpHCiwZ/
 e1WePFcVX0Z+oQezwwcbmtCMxmX/WoJXXoVqhVI=
X-Google-Smtp-Source: APXvYqx08vHkWjEgwidVE5CNf8QWU9jelWENscfkCRW4lq2iK4Z9IGTRwEuYs7H+NaohHbSqrK9acP9B9NhVu7FrhLY=
X-Received: by 2002:aed:3363:: with SMTP id u90mr3710460qtd.7.1565872864778;
 Thu, 15 Aug 2019 05:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190814172425.26089-1-sudeep.holla@arm.com>
In-Reply-To: <20190814172425.26089-1-sudeep.holla@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:40:48 +0200
Message-ID: <CAK8P3a3HhcLTgBXBfuYTKR0FEdPehnhGoFovMB9O=5=Xk2GKoQ@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: dts: vexpress: updates for v5.4
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_054105_707274_F88B8F5B 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 SoC Team <soc@kernel.org>, ARM SoC Team <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>, ALKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 7:24 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> ----------------------------------------------------------------
> ARMv7 Vexpress DTS updates for v5.4
>
> Couple of updates adding missing: SPDX GPL-2.0 license identifier
> and newline at the end of the file

Pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
