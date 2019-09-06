Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB301ABCC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tH/5VH4zhHKVxBPHFF/cxfyGXYl7eiFw4O5yv8nHZnI=; b=hX6iRqfk+Les6L
	JSuum04Ct2JnTIJwyxl58pnXfE8SeQs2+OaHKeosdCaY9uXueaGVQI/7JL1spqIuJQO4f0lNvSQJk
	Y+Ntbbn5CbWu5Qb5HxcDtTVyAAHhx2MpxfXdGBRKnAOi8l7hpV/EMKduiiTRNZrllvROIwt+bGJCz
	/TESsQQRJQjYtlynGrbieNV3J8JGKIULMcvguDMc9AEhxO+uhSVhQyu1X4lJVdk9AdsE/O0SbG5v4
	iwsypC63Va4gX3r0EBGWHkB9AmL7uQlQxR745R+jP+hVm45RGPAB6tYpSiMTnbLAA4bjyVAV3sTSr
	WNxTC8yzRK9UYtcJG1JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GNR-0007FE-RB; Fri, 06 Sep 2019 15:42:21 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GNE-00074u-9H
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:42:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id y91so6674284ede.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 08:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a7CpqJIrowSUHG+Dch68wvi3kLH0yuCv0IJ23idpZx0=;
 b=YXvpaoqMtouskhiUthoVXPDwKUE0Kz84re4KCST1uCTAdZjSEPNsCxH3wZatPhfpAw
 CglvxirjKsFI5Yaogq+8Ur9COKORkUDCdZBoiH2khsNLfib9n6ch/6NaZBqtk841aAnl
 ozo71ho8eyrOMjQ8i2QLUDxeMChNm4iPTNqqGriW7BgshzdhNnDzVrR9LB77Vlua9nQa
 fSy1556Hyav/y2lp862IG9hXSaRGsJvWVxnFEpaev+aNCrLuZV8Oi+N9IY/txQmMvXPy
 ncjCg4DJh1LDJlanwQwRvadO7ctDS66Q74Yg250aQFjMHJ5ZldxRx3JoU2pkerbWZTki
 DhlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a7CpqJIrowSUHG+Dch68wvi3kLH0yuCv0IJ23idpZx0=;
 b=cfl5CNA+850U+u6k0potUWA0ro2Ey5+ICs2HGdVQ0O7/PpiVw9jeixSLXmlI+ygH31
 bprs2ffAksFYKTCl/YOD08pJwXbZL+0MBYvlb8ovyHZaYH+HJjYEzaQ6pumWW/fD1AMt
 4462PIyrzE4AuKbtvL1s7PpqfgX4cM+LMvoOnCHpffXDZl40ntzmMR+IsyZp/eDb2FAx
 RPoKm4PMC0smZBW7kBeFkhC3AqM9Bzotx3e5ooHkye59Txeeebt6HNhg96FxcDlMquAJ
 /qgSLpkZWR9YJCapOZquHi/q66I1EWaMQ0Akdshzh80w8+fW34c0Q9Npv09PCbzkOvs9
 9G6Q==
X-Gm-Message-State: APjAAAXwKNpEh6CXJzHwrQ0dIL3USef19effoktwFmJIN0mwXst96w8s
 v3U5NwMm9MctsdWFcoJ1SSIDCboVytGwWOUkNOfkCg7T
X-Google-Smtp-Source: APXvYqxdjX49MkF9aNw2e1jsftF5aJXCE4yDWZCKUgUZ6wavoi1VTf853eLT2XTzHK8gYqwDuQeOUszbmnukR+qEv0k=
X-Received: by 2002:a05:6402:17ae:: with SMTP id
 j14mr10239541edy.219.1567784527097; 
 Fri, 06 Sep 2019 08:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-4-pasha.tatashin@soleen.com>
 <99aba737-a959-e352-74d8-a2aff3ae5a88@arm.com>
In-Reply-To: <99aba737-a959-e352-74d8-a2aff3ae5a88@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 11:41:56 -0400
Message-ID: <CA+CK2bDj18EkjznFg7rbSSEtDDRpTioyrWfu+EWChH=8zktrNw@mail.gmail.com>
Subject: Re: [PATCH v3 03/17] arm64,
 hibernate: remove gotos in create_safe_exec_page
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084208_334046_52AF1886 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:17 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > Usually, gotos are used to handle cleanup after exception, but
> > in case of create_safe_exec_page there are no clean-ups. So,
> > simply return the errors directly.
>
> Reviewed-by: James Morse <james.morse@arm.com>

Thank you.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
