Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A3F13615E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 20:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KEt0Dn66dpG/bVYzwhQDn0aqjGtHoay9k1iuuXaZ+UI=; b=TonSzXraRl3EsEsT9ZjjTbvO6
	PBY66cXbNRKosCSpbJWGBE+X71fnjPx6kNUAd8YdhElkdGUQzNkOHDZi1EHu0xC8aA0rIbGUcfICU
	YaDs9XaBhekxWllX8My/ZdyFphRAf03kLTOUZ23KCYyDWGqt1D4yPPTVGCeTLot9fqTQo27Z/O/5A
	BYogj0zYr4aPrsI9U4SC5BS9iHDFSp4CSnAOU8r4sRPzvbtwCOBr6TI0HMlpSl9Nh6G7Cd8KT8POu
	B9Q7ZqcY+cDEJX3e1GoRqRruIPLxOPIJeeMQU0AT5KyPwNTRHpLcGl7x/V76eGhPhZINJRVdTDPYQ
	jNQz5pX3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdmd-0000AT-Rb; Thu, 09 Jan 2020 19:47:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdmX-0008Sw-B3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 19:47:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id q8so3846020pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 11:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tOr15WETxbkLw/hVhIIJI77xVs+gy+a9H8+1jFpIRfc=;
 b=cG0QOwda3n2lMKGGwl2gvG+FY0g5k14CGaWhbv4nmRcoT2JX4qtut3O08AYJiZSsJ1
 cr8cRqsI97d5/bOkzP8tKl3Tt9qtR5JvXtPKrWUCiPl4DV38hUy0eNUJDkm8kHbJEuBE
 yaFZx1vNucRxrssnQpATjd86jpNCMGp+2Uyc8U06zuHuUL2AoQcrnZJ+y884oRxt8t+n
 VRC8uxlGUAtadaiER22t+8Zb5vtrFxei+x4QHt8BHfVM01jX4dRRdZl9Mv3Dje2YTVYW
 tV4Ihp6XBYA3izk3Ms3j7QY4sBnbwek7lIwiWDhHQ5xPFFbll2klVlmKSmR8wUaYCyZ9
 y5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tOr15WETxbkLw/hVhIIJI77xVs+gy+a9H8+1jFpIRfc=;
 b=NxYMnltF3kf3jw/O9QMkVZzh57CsIQLTu3nCxF6a56ZqXv10+jDt0PuyM5TOHjlVKj
 hXFVA0qqAJKkuv4tu4g9bc0CX/MqXT0rWrxf+rpncQ7hSGzs6ur+ccEumMefwM2sD2dM
 ABRAr3O7vHXOJfkhad34HjXOF+MsdoxELAny8YsjUoAIosXY2WiKKb/YkfG+CjBzRHUR
 9oWvyxYlzJ8EkxsW8ZwkCffikJvnodK8LhMBNHV2krtCGZDBukNRKw4JEPqnuoE1POsq
 k7rbo2MYZI7eOKLCY3jZXfAPe2aJBCnQSx+1+mDfz1x48kadAN3mG4ESXQfsfGUcXrFW
 T9Jg==
X-Gm-Message-State: APjAAAUB2IglPpZXR6d7knm7Ncv9Qy/dWKUokwQgWNJA+/mdQ35zuS7w
 q1qWrpDAphmNmYZvBh0vFiOvWA==
X-Google-Smtp-Source: APXvYqzh23zJ0M/6YUkb1gak5IeC/b1rxGMe/2+na8ui5AM37mG7vNvlQ/Y50JVkaXV8dlCW2yJyFQ==
X-Received: by 2002:a62:e30f:: with SMTP id g15mr235672pfh.124.1578599265739; 
 Thu, 09 Jan 2020 11:47:45 -0800 (PST)
Received: from gnomeregan01.cam.corp.google.com
 ([2620:15c:6:14:50b7:ffca:29c4:6488])
 by smtp.googlemail.com with ESMTPSA id z130sm8572761pgz.6.2020.01.09.11.47.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 11:47:44 -0800 (PST)
Subject: Re: [PATCH 00/14] KVM: x86/mmu: Huge page fixes, cleanup, and DAX
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
From: Barret Rhoden <brho@google.com>
Message-ID: <e3e12d17-32e4-84ad-94da-91095d999238@google.com>
Date: Thu, 9 Jan 2020 14:47:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_114749_408007_C38F5D0A 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@ozlabs.org>,
 linux-mm@kvack.org, kvmarm@lists.cs.columbia.edu,
 Andrea Arcangeli <aarcange@redhat.com>, Dave Jiang <dave.jiang@intel.com>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 syzbot+c9d1fb51ac9d0d10c39d@syzkaller.appspotmail.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 Liran Alon <liran.alon@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Jason Zeng <jason.zeng@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi -

On 1/8/20 3:24 PM, Sean Christopherson wrote:
> This series is a mix of bug fixes, cleanup and new support in KVM's
> handling of huge pages.  The series initially stemmed from a syzkaller
> bug report[1], which is fixed by patch 02, "mm: thp: KVM: Explicitly
> check for THP when populating secondary MMU".
> 
> While investigating options for fixing the syzkaller bug, I realized KVM
> could reuse the approach from Barret's series to enable huge pages for DAX
> mappings in KVM[2] for all types of huge mappings, i.e. walk the host page
> tables instead of querying metadata (patches 05 - 09).

Thanks, Sean.  I tested this patch series out, and it works for me. 
(Huge KVM mappings of a DAX file, etc.).

Thanks,

Barret




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
