Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D47ABCA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JySApYkF+lMLFJYu95Vm+PfSEbP731Io1GyAkoIWvSQ=; b=A8Amd4Z2NqOVKB
	5GixFEfpAocopHYxNuSjkjNKrQXNGZrQ5WrnuT100Uy5GEEWjgXtwtRTSV/piys9q8sXhwXgQJH0g
	kdEMihyF5Ek7nJnILRYQ7Ca91fvK017dIO6KJhBEq7TfDYROUKRsblCH5REFI9XfMsp1WQ5vRzFTB
	4w06RUe811nFGjfoZ5wqPVeP+ywU5IgGYVdC4NM6FF0/aY+O/iB3qoSyYX8P6OP9U+NG/2HoD9Jpk
	lmYSgm0uUQvWZn2EorjM3H+p/Rv7lG+89W3XUHLz/1VyhVOGhA+mIHdwkHk87KMi7oOkQGcuV1+Zj
	zBhmeYsGiPpqZb5a57hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GHX-0003lZ-Ad; Fri, 06 Sep 2019 15:36:15 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GHI-0003f0-Uf
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:36:03 +0000
Received: by mail-ed1-x542.google.com with SMTP id i1so6696407edv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 08:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A4FYq6BYAh9kLfOqN+BJBL7FeQsVNJ/SlbY8XN9CwA8=;
 b=Ef0Hr3tJqLTPZXz5nKn/QZlVlv/EccVcAXv+2/UUOF6Mg5R+fHj87YhuLGsxjwYppU
 W3/rHKML8xuucTp2rSpU2M2xqVOAPB2zE2P5SzCfGRnmQUckNHc9bFtZKPELKdLRUP2f
 JG+u003rO5+i6SD1pmAO0U6edTrVhdAnswlfGrKlbFjZaunsV/07suyfBhpVyRaKAqPz
 kgoeUTaq1QPmlw+R60+UxKe7BthBtS34DA2HkxeU86dVp7bcstmFCe/Kk5FE9Q+vkfgM
 O4sRgA1GIDIYLWe3+HSMgP8M/j2LiKmEcd/yTovL3oK0UfXa3QpI0BHSrg+ZS8481Rrp
 O53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A4FYq6BYAh9kLfOqN+BJBL7FeQsVNJ/SlbY8XN9CwA8=;
 b=oFsg7iFZ1Oa/thYiZsI8QP1cty/fDWPdM93AhLXyp+5WVRyY8R63Kjjb5EnEpeMV/I
 Hed6vZZJcjPeWw409b2O9AuBI1dVr6u15gMM1ylSSTshq+bR2g1AyrHtHDvVOtBAQcpA
 QtfwsPimhYmWM7dMOdNOAc92dGHpp2wWErVFmDnHsLB8jYIGzrVwK1F7ceM4yGS+pAC2
 r0GlY6/PCBqq1nW8kLpGdVibLLmGR8Do6jvM1Bh6uX4f2lkVxUHNLWJwcGNKXkKZ0W14
 tajEpEfy3gLI+gJPtQYmO52NiWC4pL5f2GnhtfW5Hel07bv8gfwVqJWDVXH9U9l8QAOk
 5YlQ==
X-Gm-Message-State: APjAAAWGshU/FyqEBoLzh/VOnz3lb9E8dLVg+AvEUNlpGmvBQYillr/b
 5eZSJkQweGGAMPiioHfaUoeJYNwrLq12FaOfbIU6vA==
X-Google-Smtp-Source: APXvYqwSiKKOKWP/h3a0ZsF+Oo9rceIyMqvsTBtnjeEonE2/Oyyhql11Q3k8Zm0qLFs0EuLz3YWma2Khwt65rF7/etA=
X-Received: by 2002:a05:6402:17ae:: with SMTP id
 j14mr10209564edy.219.1567784158621; 
 Fri, 06 Sep 2019 08:35:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-2-pasha.tatashin@soleen.com>
 <0f83b70e-2f8f-aa05-84d8-41290679003b@arm.com>
In-Reply-To: <0f83b70e-2f8f-aa05-84d8-41290679003b@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 11:35:47 -0400
Message-ID: <CA+CK2bBzCnxk8X8R=_70ECT=kn8QRm7OioZP4LNJioTNXYDhXQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/17] kexec: quiet down kexec reboot
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_083601_115765_2104C4CC 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
> > Here is a regular kexec command sequence and output:
> > =====
> > $ kexec --reuse-cmdline -i --load Image
> > $ kexec -e
> > [  161.342002] kexec_core: Starting new kernel
> >
> > Welcome to Buildroot
> > buildroot login:
> > =====
> >
> > Even when "quiet" kernel parameter is specified, "kexec_core: Starting
> > new kernel" is printed.
> >
> > This message has  KERN_EMERG level, but there is no emergency, it is a
> > normal kexec operation, so quiet it down to appropriate KERN_NOTICE.
>
> As this doesn't have a dependency with the rest of the series, you may want to post it
> independently so it can be picked up independently.

Hi James,

I have posted it previously, but it has not been picked up. So, I
decided to include it together with this series. Is this alright with
you, otherwise I can remove it from this series.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
