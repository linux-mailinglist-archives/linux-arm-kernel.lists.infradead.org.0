Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EF2137A89
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:References:In-Reply-To:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j4pQShN/VRn2mQhPUdy1NFNPM4P+T5Zv4Br29h7xdUY=; b=IaWmpoyf6wHd5Wimbh3bjss8y
	Hr5b/yBKfnZKvV8cxcdwGdwGHc58oDcla+J6+SW87gjyj9x7iay9H4bj+L8unjCfz2VzRs0G/fZfJ
	JweQtF3QF+owAVV3Kw7uoi++zriI5xjisAu2OdLiTaHBrm0nc0MwinNQHHQwnutw+aHf+ycvzVa6a
	2ypbyZGOAvGX50CtgGkktV0fJrWLBcHfXYHL6B+lzUzKVkV8XJJ2Sz70RairHWKhjfcQ7RBOhPc0A
	XQgmR6y7h0xcsjXLQ50prGHwXgN2/kbVI38oSll6lHtzEnmiDIaKnxX8QpxFECVNdJbPJBPLDJ7D3
	69PKqfuCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4Vs-0007uY-0B; Sat, 11 Jan 2020 00:20:24 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4Vi-0007ri-Nh
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:20:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id x7so1736284pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=c3X7AVrd0eaweLYAuO8RL12YZV2EtbyuB8unmVAV0Nc=;
 b=o/riBuR2mH3VghdAJD08lJGw+G6Nmt2YFqawukfV3FgIyraZCC33g4w6UUkTg4B9YA
 bPaQ7HIdl9EVvkaFzug0pY/FlWJECuXnToQMWAXeRVE0al9hqWVAVcLgt0QhvWPJSBsQ
 bB5dxtI06QKGwTmE7+MmdzSWdr5sWOBaOx8ylflwJxzwunQWhFk0yZMqgjvLjx3Ta6Qw
 IY0NzO2fCoYN5CkwLwDpJMeX7S6jXG0r+Ka/MngphRFWsDvtkDRIbForX/TrNPi0+IDh
 9ZHCf9TkSZkGR/2ZIQQ0xtQVlRTLSLv2/gi03mwbtBLmcgcOWB86bKQt7FFpTbEBt+yn
 J0AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=c3X7AVrd0eaweLYAuO8RL12YZV2EtbyuB8unmVAV0Nc=;
 b=OLzM0EyQTvuurMESiFhoVgmeXow4U+d02dPjsW2ZuzF5zE21CMk6CEx45YzsJlk2z7
 r2Rryv/OdsINhJ0KkxbrW7lExEqjeG2ho830iQnRni3ThIY9AS7SytU85apx3EwyEk5/
 t3UwLKawVPEJCBf/rJ4MCZbNjSjJgLorXsejPSGJ41MSF03EWhIocIrPmzwTGEL9JLUm
 OblOOvCEZxezA3MNvjlUAfif0+apS98aAxRu70lILkpPtFY2GGwQct2oFGfraJEn15jJ
 zkcRqE02GMMD5txyVTiu2gPE9JgHxBcXfOX2szwBMXpGWSz/2pgM1ADWT1DHIf6N4pjO
 TICA==
X-Gm-Message-State: APjAAAXNGm5RxhdWibLBuf2P33KHWMWkcI2kjm56aMNrgQqbGIS+ppqy
 zcVhLNIbaCsGupqtPx8JExmgow==
X-Google-Smtp-Source: APXvYqz94HjiloVFGVWbZus+RYXmvPQjwFd3nN3tcOUYSqCGg0YFmHQZNCSbn5YazmB7epfwxn4mvg==
X-Received: by 2002:a63:e30a:: with SMTP id f10mr7422254pgh.331.1578702011266; 
 Fri, 10 Jan 2020 16:20:11 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id c14sm4013510pjr.24.2020.01.10.16.20.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:20:10 -0800 (PST)
Date: Fri, 10 Jan 2020 16:20:10 -0800 (PST)
X-Google-Original-Date: Fri, 10 Jan 2020 16:19:54 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: Re: linux-next: build warning after merge of the bpf-next tree
To: alexandre@ghiti.fr
In-Reply-To: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
References: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
 <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
Message-ID: <mhng-0daa1a90-2bed-4b2e-833e-02cd9c0aa73f@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_162014_773026_21A5B4E3 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, daniel@iogearbox.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, ast@kernel.org,
 linux-next@vger.kernel.org, zong.li@sifive.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 14:28:17 PST (-0800), alexandre@ghiti.fr wrote:
> Hi guys,
>
> On 10/27/19 8:02 PM, Stephen Rothwell wrote:
>> Hi all,
>>
>> On Fri, 18 Oct 2019 10:56:57 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>>> Hi all,
>>>
>>> After merging the bpf-next tree, today's linux-next build (powerpc
>>> ppc64_defconfig) produced this warning:
>>>
>>> WARNING: 2 bad relocations
>>> c000000001998a48 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_start
>>> c000000001998a50 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_end
>>>
>>> Introduced by commit
>>>
>>>    8580ac9404f6 ("bpf: Process in-kernel BTF")
>> This warning now appears in the net-next tree build.
>>
>>
> I bump that thread up because Zong also noticed that 2 new relocations for
> those symbols appeared in my riscv relocatable kernel branch following
> that commit.
>
> I also noticed 2 new relocations R_AARCH64_ABS64 appearing in arm64 kernel.
>
> Those 2 weak undefined symbols have existed since commit
> 341dfcf8d78e ("btf: expose BTF info through sysfs") but this is the fact
> to declare those symbols into btf.c that produced those relocations.
>
> I'm not sure what this all means, but this is not something I expected
> for riscv for
> a kernel linked with -shared/-fpie. Maybe should we just leave them to
> zero ?
>
> I think that deserves a deeper look if someone understands all this
> better than I do.

Can you give me a pointer to your tree and how to build a relocatable kernel?
Weak undefined symbols have the absolute value 0, but the kernel is linked at
an address such that 0 can't be reached by normal means.  When I added support
to binutils for this I did it in a way that required almost no code --
essetially I just stopped dissallowing x0 as a possible base register for PCREL
relocations, which results in 0 always being accessible.  I just wanted to get
the kernel to build again, so I didn't worry about chasing around all the
addressing modes.  The PIC/PIE support generates different relocations and I
wouldn't be surprised if I just missed one (or more likely all) of them.

It's probably a simple fix, though I feel like every time I say that about the
linker I end up spending a month in there...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
