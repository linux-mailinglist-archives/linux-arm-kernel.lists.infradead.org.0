Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EA1105E92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 03:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b388NtqQiNsvetZJ++qD43VWNfV7DeY6ehVfqnOortc=; b=hy0sKeJJGAU4TD
	hGcGt0cTVWwSni0ne3UbTBoTwvxz7pjqMOqSuRBnwyH2aaiS/BunhbhD7fAwMLCskg6xAPbdWygT9
	Eux6pUCPqv3KwQo3/jKTm7tjCKhOSkSjrv/w5bkOXxSLbg4cPFs85BpxargbCmk7kPII8UReL9JO/
	EB6s9llGBdc4guDnFSFKKV23PlaORnOpto1Po8FtSQAVwr8XTQqdZRkZfdb5qU7MnVA1au6OXoWwZ
	Vv1tLghwpkzI+HdMz40ROh7w+o+59Gw4BDaH687fP/So/kp79EOHQqbVQ2tYE5h3+XNBkeFt1EoYF
	HKvb2N381tspnxzdzckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXyZ8-00058J-Co; Fri, 22 Nov 2019 02:20:58 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXyYz-00057V-Rx
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 02:20:51 +0000
Received: by mail-ed1-x542.google.com with SMTP id r16so4629477edq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 18:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZZKiFJfK+QnaDabq2KuDAv3MPPigTMKz2YqtvbwcsBE=;
 b=e6NPk8y0Od9eSqId12ooausAsOJe6fSLW4i2fperQF/VoSj/UBOW77u8q1bk2zdVaO
 DJjhD73XFlXItuuIQnFx/PrjmxuCLTxyGlx8MIR4Yb19Q81k4CFHK46heedRrUDGJUta
 MUYGHnmbbQ+fZA5UryP11na5aTitYSj4B+UkVvqO+v16FUUsgnjCoHCDalIVdoqSsTNT
 NXkpV2aCP/qSIc6bL9zaw3NvKvn9glnZMwfSgD9HHMfNwJncDpWSvTdReALlyRyFlToJ
 Lknl9s2+nb52Rv9LqHJD2ssgN2xV9ZZIvMw0O0r/KpKAVGBIug/y/rxT318m+tgtKKrt
 XB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZZKiFJfK+QnaDabq2KuDAv3MPPigTMKz2YqtvbwcsBE=;
 b=T07tVZNs89ih2wGcp823QpwR5WdVk4OWfrSJdXi4oAGiGf/V1YUs3t2NNuy6SJVoD0
 m1Db++BhM4FSu+llhU8gBjOFI10VfCBXqpiokLd2hcbEitAjQdmb0VeldEU+sYlahg1l
 GiZn2uxarOiGZLPFo8c7sRs55GJzRs7PzSHooAnNZkhFIpn+fc3CidbWfZUU+Y8XZJkl
 6tB84QbIXUApbwCLv6f09XRn9GOP+nImIqjKPplT9M02iuBwwBQ1DjgrHvyzNpCxKVVZ
 ZBgiP9UV/38DI0Ia5rsGt7oOwUxtw8UwV3Dl5x/Log32U7W3nUpkdeC529TRcTCrVem4
 oXcg==
X-Gm-Message-State: APjAAAVC+/OLw0lmQu1Gq5iFJymufk2mHMytXpKSzrsZMyJXTePiQ/Bu
 oJYp0ppSeML/Xe/DRekYwEARYCW30fbFEtXcfHFkCw==
X-Google-Smtp-Source: APXvYqw9amlPQfGbqL89y89/NKWzDB1NXkpkS7Lf2eLq8xcEu/NYPT00O/pqP8qpKSe6hmyYrC521a/FC0f4bs3UFx8=
X-Received: by 2002:a17:906:5246:: with SMTP id
 y6mr18836740ejm.330.1574389247998; 
 Thu, 21 Nov 2019 18:20:47 -0800 (PST)
MIME-Version: 1.0
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
 <20191121184805.414758-4-pasha.tatashin@soleen.com>
 <CAMo8BfJYEh_HYGuKwKgfwVdVwg-w-AxN=+6zDuYdwB+E_dTSzA@mail.gmail.com>
In-Reply-To: <CAMo8BfJYEh_HYGuKwKgfwVdVwg-w-AxN=+6zDuYdwB+E_dTSzA@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 21 Nov 2019 21:20:37 -0500
Message-ID: <CA+CK2bCvbZCseGgZV9wjmko3z6h2yNyLy=k3onhL=-7CERSbMw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: remove the rest of asm-uaccess.h
To: Max Filippov <jcmvbkbc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_182050_316416_6D30C896 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> This is not related to arm64 or to the changes in the description,
> but the change itself is OK. Whether you keep it in this patch,
> or choose to split it out feel free to add
>
> Acked-by: Max Filippov <jcmvbkbc@gmail.com> # for xtensa bits

Sorry, this was accidental change. I will remove it from the next
version of this series.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
