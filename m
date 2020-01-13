Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC39138C93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 08:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xU9deNfiSXN0wlUXp0nE7ZiLi9Pk9lPAkTEGULB7Fds=; b=FrBSRObiWSN5PPPk87FxGLr0h
	/3326JhXs7cNQ6kQ7eO6a0EKov1rhC05ZRNuA5x6S02UJzi/S3RgSRtkCUT0pUqrsb3cW5o5zJHfq
	CQ7TkfwBm0Mzkb4myu/1W9T4xySmXNWWyYimlFHxtKYbZF0g3tXo9+9L2j5uN+Y3NsyLKP0zcnX1H
	+XB8xbNAu8e0X61OwSxrZ8k//kncubRlme7F7hm4x+f7RyRrxogMWzI8cjE++1dn3weUjlI/Oc0Im
	hisnF1UzhrbFSSoBPKxyH+5ub6de+4K16MO/ZM51st1JmNYBlTP0zAawr/hGW4UUmu5qpW0j9FChi
	EzoKpTLcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqubv-0000lC-TR; Mon, 13 Jan 2020 07:58:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqubl-0000kA-Vq
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 07:58:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578902275;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WRCNtJBa3pAnVzkWFvQcFj8dlg5Kh5b/Y+kQmy5E3UE=;
 b=Geq4fPqC+o7FoYQzUEo8bOv1L0MdL8rcYKGbmIsDLuMPF1kBRCqYHsq2evQXk3cC5tqB0K
 GlFVPZgKREOZWOLxppLqVYAjA/v6KsT7GvJrrzbKrI3rnU5Psnu7PRIOzCDHlpvaDzHbpY
 C5RNEQhJl1CJSxWReOAaYcXujTop8cM=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-1qeJX8E6PaCTdRwlcbUkfA-1; Mon, 13 Jan 2020 02:57:52 -0500
Received: by mail-wm1-f72.google.com with SMTP id f25so2239246wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 23:57:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WRCNtJBa3pAnVzkWFvQcFj8dlg5Kh5b/Y+kQmy5E3UE=;
 b=BsZgH5yqwkYBmoHyA2zL8d1/PmdmG4j6r9r6AeLPYlNKkg0sU6NOh07pIO/5dzkdux
 jdnzm+qsMXP84ixyqwGEyiQ9qfhV9aZO7xJ7Cjjbwh0fAjk8tk55WBOdzY99c3mj66E1
 E8thpaYcVYO7XccRLjTe4ek0OVwYAqLWGaWeYAVsNirWVU2MAAcNcZ9bfW9ah4h3UK/d
 6TtBjAsSFf2syRSVBoVvtkPgGQUKEVoZuXsEflcDwKOuTQz+HGzNRQUMfdsbgWokmGiP
 ezbBNfcpxW6jlO3Gup/Ln/AiWiho1XX40IK5P70LZpgq9N89dLE9BrPlAgicSHaySKbu
 7azA==
X-Gm-Message-State: APjAAAVplCrNR5A/LZnL1Oe8AEyDrw7QBam38rJT7R3ehFv6TRDerDPB
 IICTx+Ew+OEbP1j0fAs+rBgqcWCLew6djcWSbd9AUSWXJW87fYXpa7eW9TmIydwdMwHGTEUttiy
 r+LN1XPobplu/+W/geBiJ3369zVxILIqjbzc=
X-Received: by 2002:adf:b193:: with SMTP id q19mr16871563wra.78.1578902271118; 
 Sun, 12 Jan 2020 23:57:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqzqIhiJZej9sb5HxMulHntphAZP0eMI9QslhV7jkOwDAMQtJgRyF42O5Ld6R4wBUaye/bVyQA==
X-Received: by 2002:adf:b193:: with SMTP id q19mr16871542wra.78.1578902270852; 
 Sun, 12 Jan 2020 23:57:50 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id g18sm13034427wmh.48.2020.01.12.23.57.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jan 2020 23:57:50 -0800 (PST)
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Nathan Chancellor <natechancellor@gmail.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
Date: Mon, 13 Jan 2020 07:57:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
Content-Language: en-US
X-MC-Unique: 1qeJX8E6PaCTdRwlcbUkfA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_235758_097880_2EB29527 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nathan,

On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> 
> Hi Julien,
> 
> The 0day bot reported a couple of issues with clang with this series;
> the full report is available here (clang reports are only sent to our
> mailing lists for manual triage for the time being):
> 
> https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> 

Thanks, I'll have a look at those.

> The first obvious issue is that this series appears to depend on a GCC
> plugin? I'll be quite honest, objtool and everything it does is rather
> over my head but I see this warning during configuration (allyesconfig):
> 
> WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
>    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
>      Selected by [y]:
>        - ARM64 [=y] && STACK_VALIDATION [=y]
> 
> Followed by the actual error:
> 
> error: unable to load plugin
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> open shared object file: No such file or directory'
> 
> If this plugin is absolutely necessary and can't be implemented in
> another way so that clang can be used, seems like STACK_VALIDATION
> should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> 

So currently the plugin is necessary for proper validation. One option 
can be to just let objtool output false positives on files containing 
jump tables when the plugin cannot be used. But overall I guess it makes 
more sense to disable stack validation for non-gcc builds, for now.

Once people are happy with the state of things of arm64 objtool with gcc 
it might be worth looking at a clang plugin (although I don't know if 
the kernel has any support to build those at the moment).

In the mean time, I'll do as you suggest and rely on CC_IS_GCC.

> The second issue I see is the -Wenum-conversion warnings; they are
> pretty trivial to fix (see commit e7e83dd3ff1d ("objtool: Fix Clang
> enum conversion warning") upstream and the below diff).
> 

Oh yes, these are valid warnings. I'll fix those.

> Would you mind addressing these in a v6 if you happen to do one?
> 

Yes, I'll most likely do one as I don't expect this to be a final version.

Thanks for reporting those. I'll fix them in the next iteration.

Cheers,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
