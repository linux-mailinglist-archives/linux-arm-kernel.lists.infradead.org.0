Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813695E7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 14:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqOBZLBnV30pSVHjJmTQpoD7F3DkY0LhH6SeuekJbq4=; b=gtzddu3A1sCIJf
	Rd774IFhmjQnMjWe3DLGFHbART1w3eH+Cn7gWIO0xiklFsq7gj/dOLASih8TSswKYyOJ2wZnWoS/b
	QUlDzFKVU4lp9eM1nFVc/QOTLbIb4zGK4NbgTxxWkrm2crwHBr2A4685Xpzw23ioJilFG1dzMOlMQ
	5mWVMlTVHsScumxZhYTW5aiFWNShBx66zXL4WFHhvBp798azXov53EmuWZgyL9CVZxdeaX7LKreno
	nY7BWYawJWu+g0OaowqXOdmvxlqy/J3inDYD0Y0S5YTjAMN7YdPgjhO3Wh9Gu+/LxsBBFRE4hMUEI
	/Takv4aYyeIjyeC9mx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03FR-00041q-N1; Tue, 20 Aug 2019 12:28:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03Ed-0003yI-Mq
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 12:27:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id i63so2470331wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 05:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fc9kgafPA2gUOPbQU1W3ajBr+1WrHB60fZSaC4Wi+Sg=;
 b=NlUKtmn9iGLGYzl/EGuxT5/QFDiWGwqT+SyseUqGQ8qv1eVKlAZutSafi0AbgwxVya
 6dqyEnKyli5cUAbyM+8YbVFbhOu1g4+mjswnShlQVVmHQ74gvUa5wUgoJq+rcOUOCvp2
 /U6ehhgch2rOD/YINXpXSo6Gl1MDVdnWaODFMbh+HsJrCi//AnlfQ1VitYLR3Vcqnujk
 4euj7syu8yOnXtSIDBrNYa44gL/mcHfIA5JvOAiTKPyRh/RjIEdyPBCtYMxXb3hmso6F
 dm3NpN8gr1s4exi5lvCCKYMLdjzcAo+jvdxcx8iU45Rf227pWO1z6xbvBMFCIZ1djaO5
 mSWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fc9kgafPA2gUOPbQU1W3ajBr+1WrHB60fZSaC4Wi+Sg=;
 b=SGViToJXAbnMUAXUnEwQPZAJQe6pxWW1LgamTACBSoQJ5uHdY+Be37J9IHVOmpGQmF
 QAiiJxOMXc7dw2DaJRkvJL224v4FyYbW+QrcaVXHGoDAmcmS67HtSfWhjR0FoQxj3r+N
 HznJJ+OooTWSDmwGK1WTWNjC3ZGn5coZ35dcg4qTqeNFxgonghsh2FbAP3wZ850ZDhXv
 zbSYnzfsNOZWy6zY7IgIj362CsW1FBneIeQzgRMBvKPQhXSGCCWe2zoI/rfsRjoaORnk
 6UXtT8CGOB3OEdwBo29sEDo7DGAijxlWJZAPqqXChZ8j7sgRRNDM5WHD6GkhJGZGZUKW
 5ZGg==
X-Gm-Message-State: APjAAAXPCm+IQASN55aiSN0F4bYBWK95H82ZHg2j2oO1l37PoSDOuGai
 BV5KRbTak9XC4iRyF4ozfsy/E571Y0z2hNrjwpPWcw==
X-Google-Smtp-Source: APXvYqzZ8/F9f0NciEUL0j31UKBINg5KnpUK5KcUIV+VxonHUHvdyeOCmoqDvaTzkRhT6wtLRbUezdw96auKzQMDFR0=
X-Received: by 2002:a05:600c:231a:: with SMTP id
 26mr17871560wmo.136.1566304054078; 
 Tue, 20 Aug 2019 05:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
 <CAKv+Gu-yaNYsLQOOcr8srW91-nt-w0e+RBqxXGOagiGGT69n1Q@mail.gmail.com>
 <20190820115409.GO13294@shell.armlinux.org.uk>
In-Reply-To: <20190820115409.GO13294@shell.armlinux.org.uk>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 20 Aug 2019 15:27:23 +0300
Message-ID: <CAKv+Gu8DBA8SoJ49dMeYjXHchGZpAiLgxLEQF7jQGtdQ6camdw@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_052735_766298_2FD0BEC0 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Juergen Gross <JGross@suse.com>, Joey Lee <JLee@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>, Chester Lin <clin@suse.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 at 14:54, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Sun, Aug 04, 2019 at 10:57:00AM +0300, Ard Biesheuvel wrote:
> > (The first TEXT_OFFSET bytes are no longer used in practice, which is
> > why putting a reserved region of 4 KB bytes works at the moment, but
> > this is fragile).
>
> That is not correct for 32-bit ARM.  The swapper page table is still
> located 16kiB below the kernel.
>

Right. So that means we can only permit reserved regions in the first
(TEXT_OFFSET - 16 kiB) bytes starting at the first 128 MiB aligned
address covered by system RAM, if we want to ensure that the
decompressor or the early kernel don't trample on it. (or TEXT_OFFSET
- 20 kiB for LPAE kernels)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
