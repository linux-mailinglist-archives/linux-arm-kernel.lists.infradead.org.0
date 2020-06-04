Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8B41EE7E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KimCM+7cMS8z6j72yfES0uA5wbc1DMlApVQF0g0/sJQ=; b=VP8uwZiAnem2xavLwb3fk8ELf
	RonKNrhU5bzSG5WCuWsRv0r1/97RGrhCtLyoEUYrPg0jPVG8zbd0nPw+zKc7rkcvVv6KVG7NBPPjK
	CAdCwoQTO/YBo51KQVZxB5XwyD1cBHTQEVB05/hrVINXZVU1Gwy4Y8BvKREn1JNmQTIx5ocyb65ng
	rg5wwCUXsGnlJzNaryrf5dh8ysb0ep70iFdthvf9R2EwfmI6dYm0pJhugtJD9nP7kkC8rdfqWMdGz
	PoGUjrt6lwJ+BPbh0PqTfC1rxnAtLEAUgvjf3v/XvOF70Gq85Rzj1NsTyBi12XGSiYDpmD/kkqLNW
	q58bCcPeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrtL-0008V8-IV; Thu, 04 Jun 2020 15:34:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrtC-0008UF-SI
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:34:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so6584901wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 08:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D3By0h98qnolfLM0+QRpl2dqCpgdvgnNY+OucjDnKDY=;
 b=vZt0DMCfoJUEXzeTrBICKPyqGfuBe7vx1mxfTRfe7AMZfEO9MgZiR1mPQATjGg7sos
 L2gEppsjZRToGPjruQDj6PgcZ9k1LIUGD0iWIyOtnINMSac6a+7rCj3z4QC4lrZCdKFE
 k2yM8OXoWQeV2IMPxu2sJJA6xUKeMYmYvndml0HnOewX3ksq8F1r9goi9s79mQpwsSIb
 c5mAXaNTKzUmdLKel6x7irCbEI4DTv2oXtv/qN7Oxn1zzp0W/r8QazRbJWdm+blAf/6N
 mqCzGRjWNAgSpkjxibd5bm0M9tIZAW+bPd5JKLWcPAMtTD2J+9FPsJ68L+Qr8Bw98u2/
 uiog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D3By0h98qnolfLM0+QRpl2dqCpgdvgnNY+OucjDnKDY=;
 b=cAzSC4BX6xTBQa9TUj/tOwcYrAJJqI9ml1IGVgemy9NCt5z6NE2Lc3sl669ZynOR8r
 2c6lAWlVvl+s6CjBSn+WuGWz00hQXO+4HFgCwIuJP3U8hNcSWEXFn1rTKsnuxemt/QV5
 ZSFbCF/J1PdIvT0Gh/d8TG5MuVWT3CvV2O46ymscIic3LZIOAf/4gndiuUbBvIr+Fxjt
 tN5t7ZezdDk4wUFCAShlAuKIy0zCPyc1CuyByNGKFgFPkArNoS5lqZRmfGb/SSZDwRk8
 C9tngdDPUEaoVmUBAWRAXB3FitYwaSm6kS22+QI2HGRLRnRkhsqTz/PKN0LEXU4Pb6fL
 LJGg==
X-Gm-Message-State: AOAM532jNTgjo13RImPyP7/cVsJiqeoidGp6ALwdVvg5OBdFMogHj6+f
 qVlIbtG663BDrOxfLxTlBCy2588+kY4=
X-Google-Smtp-Source: ABdhPJxfqtpJqbRTF++Qa4Ke2KxsNtWe0xpkNWVokflegjt7JKKLmL/tz6wJQHjKWgmRMZK5uAnt/Q==
X-Received: by 2002:adf:f0d2:: with SMTP id x18mr4926753wro.250.1591284880431; 
 Thu, 04 Jun 2020 08:34:40 -0700 (PDT)
Received: from [192.168.8.102] ([194.230.155.251])
 by smtp.gmail.com with ESMTPSA id q1sm7431317wmc.12.2020.06.04.08.34.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 08:34:39 -0700 (PDT)
Subject: Re: [PATCH v3 2/7] documentation for stats_fs
To: Randy Dunlap <rdunlap@infradead.org>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>, kvm@vger.kernel.org
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526110318.69006-3-eesposit@redhat.com>
 <c9ddaed1-0efc-650b-6a51-ad5fc431af69@infradead.org>
From: Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>
Message-ID: <dcaab39e-6cd3-c6cf-1515-7067a8b0ed9f@gmail.com>
Date: Thu, 4 Jun 2020 17:34:37 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <c9ddaed1-0efc-650b-6a51-ad5fc431af69@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_083442_916225_75B0F66F 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e.emanuelegiuseppe[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-s390@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

>> +
>> +The STATS_FS_HIDDEN attribute won't affect the aggregation, it will only
>> +block the creation of the files.
> 
> Why does HIDDEN block the creation of files?  instead of their visibility?

The file itself is used to allow the user to view the content of a 
value. In order to make it hidden, the framework just doesn't create the 
file.
The structure is still present and considered in statsfs, however.

Hidden in this case means not visible at all thus not created, not the 
hidden file concept of dotted files (".filename")

> 
>> +
>> +Add values to parent and child (also here order doesn't matter)::
>> +
>> +        struct kvm *base_ptr = kmalloc(..., sizeof(struct kvm));
>> +        ...
>> +        stats_fs_source_add_values(child_source, kvm_stats, base_ptr, 0);
>> +        stats_fs_source_add_values(parent_source, kvm_stats, NULL, STATS_FS_HIDDEN);
>> +
>> +``child_source`` will be a simple value, since it has a non-NULL base
>> +pointer, while ``parent_source`` will be an aggregate. During the adding
>> +phase, also values can optionally be marked as hidden, so that the folder
>> +and other values can be still shown.
>> +
>> +Of course the same ``struct stats_fs_value`` array can be also passed with a
>> +different base pointer, to represent the same value but in another instance
>> +of the kvm struct.
>> +
>> +Search:
>> +
>> +Fetch a value from the child source, returning the value
>> +pointed by ``(uint64_t *) base_ptr + kvm_stats[0].offset``::
>> +
>> +        uint64_t ret_child, ret_parent;
>> +
>> +        stats_fs_source_get_value(child_source, &kvm_stats[0], &ret_child);
>> +
>> +Fetch an aggregate value, searching all subsources of ``parent_source`` for
>> +the specified ``struct stats_fs_value``::
>> +
>> +        stats_fs_source_get_value(parent_source, &kvm_stats[0], &ret_parent);
>> +
>> +        assert(ret_child == ret_parent); // check expected result
>> +
>> +To make it more interesting, add another child::
>> +
>> +        struct stats_fs_source child_source2 = stats_fs_source_create(0, "child2");
>> +
>> +        stats_fs_source_add_subordinate(parent_source, child_source2);
>> +        // now  the structure is parent -> child1
>> +        //                              -> child2
> 
> Is that the same as                 parent -> child1 -> child2
> ?  It could almost be read as
>                                      parent -> child1
>                                      parent -> child2

No the example in the documentation shows the relationship
parent -> child1 and
parent -> child2.
It's not the same as
parent -> child1 -> child2.
In order to do the latter, one would need to do:

stats_fs_source_add_subordinate(parent_source, child_source1);
stats_fs_source_add_subordinate(child_source1, child_source2);

Hope that this clarifies it.

> 
> Whichever it is, can you make it more explicit, please?
> 
> 
>> +
>> +        struct kvm *other_base_ptr = kmalloc(..., sizeof(struct kvm));
>> +        ...
>> +        stats_fs_source_add_values(child_source2, kvm_stats, other_base_ptr, 0);
>> +
>> +Note that other_base_ptr points to another instance of kvm, so the struct
>> +stats_fs_value is the same but the address at which they point is not.
>> +
>> +Now get the aggregate value::
>> +
>> +        uint64_t ret_child, ret_child2, ret_parent;
>> +
>> +        stats_fs_source_get_value(child_source, &kvm_stats[0], &ret_child);
>> +        stats_fs_source_get_value(parent_source, &kvm_stats[0], &ret_parent);
>> +        stats_fs_source_get_value(child_source2, &kvm_stats[0], &ret_child2);
>> +
>> +        assert((ret_child + ret_child2) == ret_parent);
>> +
>> +Cleanup::
>> +
>> +        stats_fs_source_remove_subordinate(parent_source, child_source);
>> +        stats_fs_source_revoke(child_source);
>> +        stats_fs_source_put(child_source);
>> +
>> +        stats_fs_source_remove_subordinate(parent_source, child_source2);
>> +        stats_fs_source_revoke(child_source2);
>> +        stats_fs_source_put(child_source2);
>> +
>> +        stats_fs_source_put(parent_source);
>> +        kfree(other_base_ptr);
>> +        kfree(base_ptr);
>> +
>> +Calling stats_fs_source_revoke is very important, because it will ensure
> 
>             stats_fs_source_revoke()
> 
>> +that stats_fs will not access the data that were passed to
>> +stats_fs_source_add_value for this source.
>> +
>> +Because open files increase the reference count for a stats_fs_source, the
>> +source can end up living longer than the data that provides the values for
>> +the source.  Calling stats_fs_source_revoke just before the backing data
> 
>                          stats_fs_source_revoke()
> 
>> +is freed avoids accesses to freed data structures. The sources will return
>> +0.
>> +
>> +This is not needed for the parent_source, since it just contains
>> +aggregates that would be 0 anyways if no matching child value exist.
>> +
>> +API Documentation
>> +=================
>> +
>> +.. kernel-doc:: include/linux/stats_fs.h
>> +   :export: fs/stats_fs/*.c
>> \ No newline at end of file
> 
> Please fix that. ^^^^^
> 
> 
> Thanks for the documentation.
> 

Thank you for the feedback,
Emanuele

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
