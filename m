Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A61A12E926
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyVLhLzFqdpJrjNh3HlwiBzOMyO4omqO3bUCOqYcxXM=; b=VmowD/JoasBqx5
	X3UfYZ4Z6A9tmTeFduIJmPCB3cOrR1xpBawfapkwvfd4RQxs5JJ9pkiPXhZduloh8AQa8aJK+vaVO
	KfyPOlBjEFOwq0PtQ3vtMwv8SlqBXzbAV9WQbvk47oJb81YVdD/cuGA68rfP1eeRocWkyROZzKNAx
	FC2euWVa9u2CtMjf+NtV2k2eJLb3sN0GMfWtdJY6CuDKKDGV+WcM0FbxgjdyelehrIMsN0nrzL5B5
	O8zh4DvEFND7F+gSsJVuWiBcAH2nztQaO95nZ64zignOXK9wMAqKPsWnn7aZt8BDZ4bPK61Vb2+H8
	SC41G/4hQW2zq2McWHlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in40k-0002lb-Re; Thu, 02 Jan 2020 17:11:50 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in40e-0002ky-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:11:45 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8FFFE8087;
 Thu,  2 Jan 2020 17:12:24 +0000 (UTC)
Date: Thu, 2 Jan 2020 09:11:40 -0800
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: Droid 4 regression in 5.5-rc1, armsoc-soc tree
Message-ID: <20200102171140.GB16702@atomide.com>
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
 <20191230173507.GM35479@atomide.com> <20200102110025.GA29035@amd>
 <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
 <20200102140609.7vsfwcjyvbbrmcjx@ucw.cz>
 <CAK8P3a1NU62zf8zJAMZq5KFNuvDdrf3dUcLU4HY83Q=oDC611w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1NU62zf8zJAMZq5KFNuvDdrf3dUcLU4HY83Q=oDC611w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_091144_746795_10189D62 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marcel Partap <mpartap@gmx.net>, merlijn@wizzup.org,
 martin_rysavy@centrum.cz, Sebastian Reichel <sre@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, nekit1000@gmail.com,
 Pavel Machek <pavel@ucw.cz>, Olof Johansson <olof@lixom.net>,
 linux-omap <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [200102 14:48]:
> On Thu, Jan 2, 2020 at 3:06 PM Pavel Machek <pavel@ucw.cz> wrote:
> 
> > # good: [ab818f0999dc73af3f966194d087e9f6650f939f] Merge tag
> > # 'omap-for-v5.5/maintainers-signed' of
> > # git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into
> > # arm/soc
> > git bisect good ab818f0999dc73af3f966194d087e9f6650f939f
> > # first bad commit: [38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6] Merge tag
> > # 'armsoc-soc' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
> >
> > ...and am not sure how to interpret the result, or what to do next :(.
> 
> This means that either the bisection is unreliable (it might be 100%
> reproducible or you mixed up good/bad once), or that the arm-soc
> branch was indeed good by itself but had a conflict with some other
> change that torvalds merged earlier.
> 
> I would suggest to go back to the list I had extracted in my previous
> email and revert all the commits that I identify there, on top of
> linux-5.5-rc4. If some commit is not easily reverted, skip that one
> at first.
> 
> Ideally this gets you a working kernel based on -rc4, and then
> you can bisect that to find which revert fixed it.

Also please check your dtb is up to date. We still have a lot of
stuff missing from the device tree meaning an old dtb will likely
be incomplete for many devices.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
