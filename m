Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A1320B53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ+Pc9Tehre5WZhkx+L+21BfFKlmMwVaVU92IaLAulA=; b=cTVXalaNqIYDjQ
	C6ef/aLodvIzFso/3WXx0762MIg2n4Hy+m0qzoZeDHhSO+Ersm2Fj3/arC+3/n+5dFCsa+8MX6sH2
	Rvu9D6KuVK23mbzMZzvBa5F6J5dVrzpb9he7owFZz36XjGgxmaqy9KXMGBogB7A8DQzVuFj/bhxpE
	jHUEYQ+tytpXkRDXGZjpnJwyixXg1E88uBEiZniJx739w21GVuMx539IMRChGDrstAMIovzcDFjOU
	3OOQPvPF1PcWuEcNOY1YzE4uOFDaJPCs1ACJt1DOHk0eoj6QzZl26hfVc31npNHoLvhbJeyV0BblI
	zYQxUL3RiurNmZ1P193g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRINN-00063i-4j; Thu, 16 May 2019 15:32:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRING-00063N-E7
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:32:51 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D736620881
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 15:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558020770;
 bh=r68WH/4euMEIF03eDgl3acP0UnHdg4XoFgWuEe+zmHI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zhfDnVk7ujI6CGqluZR6aypzeESD4uPYQ91GeF8Bo5/xBsIX9k94BQ+q2Ia3O8Asf
 kFFy3DcTaWqWZt6s6iftPXG/MOY5b7tTFqJsjY6BvWTMo+LdZvNeK3AGIFDAR+vTnK
 P20VCQijmK3M7urTw5uXt0JNAGbnBnc+e/TgXtqo=
Received: by mail-qt1-f169.google.com with SMTP id y42so4396007qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:32:49 -0700 (PDT)
X-Gm-Message-State: APjAAAXwciowgILzndvpsqlnczAhsv6ClLqz9ZvUr2PHp/Nznc1LMAtw
 d0MvSDA3RehI9EnC26BVF6J6xii/LprMRn5OnA==
X-Google-Smtp-Source: APXvYqySyBWIP8bNkRclfMXh66OEqZoiEOpv/b5tK4fL27uelE9OPAmunH3JBsEYv3jZ06Wmkpj7Be8lFtgdVnowH0M=
X-Received: by 2002:a0c:fe65:: with SMTP id b5mr40835148qvv.106.1558020769085; 
 Thu, 16 May 2019 08:32:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
 <CAJMQK-jrJQri3gM=X6JRD6Rk+B5S4939HJTptrQMY64xEWr1qA@mail.gmail.com>
In-Reply-To: <CAJMQK-jrJQri3gM=X6JRD6Rk+B5S4939HJTptrQMY64xEWr1qA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 May 2019 10:32:37 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
Message-ID: <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_083250_491152_CD6104DD 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:51 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Thu, May 16, 2019 at 10:37 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> >
> > Why not just map the FDT R/W at the start and change it to RO just
> > before calling unflatten_device_tree? Then all the FDT scanning
> > functions or any future fixups we need can just assume R/W. That is
> > essentially what Stephen suggested. However, there's no need for a
> > weak function as it can all be done within the arch code.
> >
> We need to add a new seed for kexec

Doesn't kexec operate on a copy because it already does modifications.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
