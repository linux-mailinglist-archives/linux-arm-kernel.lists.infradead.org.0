Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A569E05E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 16:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FwVrQVZ6zNaIPWqaR/nzvpWoy/7/BOARc8LTIjcSMA=; b=F5qY7tY3U+Tw2I
	MbYRwbZ08HUJhWmQtdP4rEFQ3RrAol8WGrvOUfDrhRN6VpDcSQFNwwafH0bVa5mnhkgW0wLBEVOxz
	gnREA0WeDB+DLiE4pJ7ZClRdaWBoshSSGpiLVwIsPFfUYmP/mWABQCR6f0/fQkZWli1AyYWjULBGm
	9BHUTqoYvk8WYVWazwVl2I4Z5tEeFILPVsw3uESDKHpZ1aPp3MPxASTj7VvcyNGQECXIOKA2nul/u
	ADwnPuRFz/wBoVg1QWAxg4kwId20Zee3vEpfwn5YKtLHiEAoI6SUeIMJEJ5fc47o8qQYILWWhdghu
	zJwMk49iOmq9G91Yd1MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMun7-00006K-BK; Tue, 22 Oct 2019 14:05:41 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMulu-0006N9-GI
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 14:04:28 +0000
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AC822C057F31
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 14:04:25 +0000 (UTC)
Received: by mail-wm1-f69.google.com with SMTP id o188so7539122wmo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 07:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3vKquIIhS417Xcv3ef04W52oBIikgSSCS3LfBkCoIDs=;
 b=LRL0wIe0GUbdSqucojA0TDB/nUCEArKf1ba32ht28IO9aLOqIhpE3N2I1jfqQT4lQ3
 TGQmXTf+WzM7mdxTpr1TFfEN61HvfrS2nM9IrT21GB7vpRwdRzlyj4VIqCWcBMcFLbiE
 ZDVwEe69bJTI3BVwk1+v0gEuROzIbhuX0X0fAdgNzFnhpyN7vShXWYLPkdUGmg1UkEn7
 aWu4/EYMtnDKWfJIaa8g6WawxxUaqXRK3xLpsflDZ2js0ORLAc7Hx2CZZJ4TOvqfB/AX
 ekOykfo38/KYXKGKAP5YdEwdWqNx5pt3x9fv2vigk1KQD0f8fw+bdh1XFCirthRTwX/N
 UuVw==
X-Gm-Message-State: APjAAAVliw1pBhhsvEBB5SdR9M6ufbAE0l/9dv4Lf3qhXeOgK131Ql5l
 RGcryRaBP25D5tjCpQ8vdlaRBxgPbaP4ztP5muSpOJ1xG560k1qT7DTLQejMpm9FAfMfLEuxERX
 LFrxyS9oujA5BOD806L9pq8p/66OMa8BOw/o=
X-Received: by 2002:a7b:c049:: with SMTP id u9mr3176822wmc.12.1571753064236;
 Tue, 22 Oct 2019 07:04:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxd12WGZ28CK/g1W21d1r/6V7p9tDfXwdcdM4EXY3TusWKTyDA7mRoL7a/JX5NzrrGKErwrww==
X-Received: by 2002:a7b:c049:: with SMTP id u9mr3176775wmc.12.1571753063926;
 Tue, 22 Oct 2019 07:04:23 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c0e4:dcf4:b543:ce19?
 ([2001:b07:6468:f312:c0e4:dcf4:b543:ce19])
 by smtp.gmail.com with ESMTPSA id n11sm903226wmd.26.2019.10.22.07.04.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 07:04:23 -0700 (PDT)
Subject: Re: [PATCH v2 15/15] KVM: Dynamically size memslot array based on
 number of used slots
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>, Marc Zyngier <maz@kernel.org>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-16-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <2609aedc-4fc9-ab92-8877-55c64cf19165@redhat.com>
Date: Tue, 22 Oct 2019 16:04:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191022003537.13013-16-sean.j.christopherson@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_070426_621426_8B12018B 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 David Hildenbrand <david@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/10/19 02:35, Sean Christopherson wrote:
> +	struct kvm_memory_slot memslots[];
> +	/*
> +	 * WARNING: 'memslots' is dynamically-sized.  It *MUST* be at the end.
> +	 */

Isn't that obvious from the flexible array member?

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
