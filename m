Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB14411A656
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rR9m03Wb/WIMsxUzBNgPh8UieGsOCIca0eG2qrgrYDU=; b=cuXEtbDnxtTF/z
	zPkhy050nOnuk00UbnWn7cgYuvmCsF/fDhrVOUPxP8zr9iW/59INp9YSZQxAEUjxCoP2nyuVriOIs
	42ifz6iUejqRISHVoHTtp282XKb8n5ewgxctj0srU6mFf2uSnlIQb+egiqJ3bLSjzpkgLVc3++PTe
	KThNGDYWanlzAk6yL6KzuUzd8gCFl1FXf/2ZQ80+flZ9GluNIP2NmW5HUL80praFdZa/3BWBRruVh
	HQy7cwnGzThsRib2PWiqiwmoQAvZ6LfkWSrDJMFSp7JmS3Xgi64C4S0LHhmaIoWk/uD6tx62jwYKO
	s4RSwhrKj63cX5Ff5abQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexo9-0003Jm-7A; Wed, 11 Dec 2019 08:57:21 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexny-0003JP-KI
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:57:12 +0000
Received: by mail-wr1-x42f.google.com with SMTP id t2so23131312wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 00:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gq6emM4eAegpiwyJCoArQtdtG8154rbbogJf8t9Y1rw=;
 b=IDgfUhD045iOd9l9JfYvCShVyYCHOOz4FowTDNN/iLTAn0wlj362NXClM2B+JHm0U+
 9mYvO2T8h6EUQcgs0/UHbr08JJtmjTEp3J7uqh9ecqtXplPPdRpuWsrQRCQyV+zs9iTy
 unwMoawoWc1LhfC/ckFVNo5YBdRgy0DH38TXwP+9+bbcAHsv94IAzCizkBQtAGjt/S+F
 YlwdCoN3j/L59qZmlmqSmGVqpOjGKFZzlbpn6hAMnJbpavUbaIfcCuZYdgKD3xA6bHbx
 fkH03NY5/B3iKcConQNDtvxQdWjiDklyXLzYi3w1YvryZJmaSUk4bOG9spmH6vYJSZCU
 nNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gq6emM4eAegpiwyJCoArQtdtG8154rbbogJf8t9Y1rw=;
 b=tDAc3OiaFIU8Tq1t/q1ftfX+CpHu5xLmXBjknftBSGAkgOUyBE8X17Jq3Zv2Zz6pjS
 JRchbOT2xofJj9CfolNEsCzinI5SnWKWySQ7xbB9URCkEhE7AWp7yWNAdUkN5iJqKJ0I
 5QNa3PsGRDkl0ABbJPLxJzouHnwuZKZCFVYTukGylw8FQZbNbOQRR+9HvMgG7DC7Xnkk
 2cOoMMQ3KbXAt/42y5B63X8Ck+4FIIeTKNmnnbCsr2EvAnmx/a9mcAy2oK5pcZzWubX5
 5n8zcY+sjsQJsSPrYJDZBo0nkGm6SBg/xxvjcFTMSA/+9vwZc30P0EzWt7T9B7lE0SqO
 NR9Q==
X-Gm-Message-State: APjAAAUXAUkDq6Kfrc5lno2m8uqcKHhIHxqAHl8lM0YcwcV2YbJBlQYV
 zYWSCqt7zFEs+E1WE8dS94tRLg==
X-Google-Smtp-Source: APXvYqyo5rmNzdSsF4ZK4OgmpGyA6vooQmWlpbZcbjm0b2KVs2B4spGwpaS+SK33coGJ7CRLcB0mwA==
X-Received: by 2002:adf:dfd2:: with SMTP id q18mr2440531wrn.152.1576054629020; 
 Wed, 11 Dec 2019 00:57:09 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id k11sm1443279wmc.20.2019.12.11.00.57.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 00:57:08 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
 <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
 <20191204175726.GA28736@willie-the-truck>
 <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
 <20191205085709.GB8606@willie-the-truck>
 <e3ac6a90-c6e7-460e-087a-880e3735051e@forissier.org>
 <20191206160955.GA27982@willie-the-truck>
 <740865eb-a993-d1dd-ad2e-84529e2012ee@forissier.org>
 <3523c365-62a0-1504-9b99-d5d030e000fd@arm.com>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <e0857f62-4130-9638-1971-e2b41d752e10@forissier.org>
Date: Wed, 11 Dec 2019 09:57:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <3523c365-62a0-1504-9b99-d5d030e000fd@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_005710_806910_057DC051 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/10/19 5:26 PM, Vincenzo Frascino wrote:
> Hi Jerome,
> 
> On 12/10/19 4:20 PM, Jerome Forissier wrote:
>> Now if you check the SHA1 hashes of arch/arm64/kernel/vdso/vdso.o in
>> various scenarios:
>>
>> - v5.4, no ccache:
>> b82810f6e9495eb8e787e82b4080654ce4afc30a
>> - v5.4, with ccache, built from a clean cache:
>> b82810f6e9495eb8e787e82b4080654ce4afc30a
>> - v5.1, no ccache:
>> 8c09a2f25969e2bf74799d6b3fb52d0fbc3d58a8
>> - v5.4, with ccache, after building v5.1 (step 3 above):
>> 8c09a2f25969e2bf74799d6b3fb52d0fbc3d58a8
> 
> This clearly explains the issue and why you were suspecting the vdso library.
> Happy that you figured it out.
> 

Yeah. To put an end to this thread, and for the record, let me add that
the ccache issue is triggered by CCACHE_UNIFY=1. If "unify" mode is not
set (the default), there is no problem. I have filed a bug report with
ccache [1].

[1] https://github.com/ccache/ccache/issues/497

-- 
Jerome

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
