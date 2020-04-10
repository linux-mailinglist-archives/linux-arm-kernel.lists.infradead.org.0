Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9C71A4A7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 21:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynJr1I2k6Qk617HngD4XXqhs9Q1aImTmIXMfJI5S4ck=; b=EBPKWMugeJVAzp
	qIwnrGIWWGaVj07dfZ11oaqDzfs5T8HoMyDrd1CzU54YRUrAha4YtKlonJcMdkozXrtXtHdZdwyOn
	U6Rw8L2x8i8o1RzCphfYhtDf9JmED9sNPMF7pfMd4F/5+KnznP9Z37Eyqr/w70shO6rwJMFP2XsP8
	DbIhP8Px6ilKZRxyxD7+5FbdrRDaKRi4+I6n5F6WlCxv8KFoxXJJ4Xa3ZZxkLNyjI33GDYKQqiily
	9U/7gQ3iwAmOw+m0qj3ezAHyt/Ds2+2OsM/M067AhPCO2iY2+oYBqLnGLFiuoMT1UnxxC1mjcIimC
	E5AKdO1RuKuHy/CokTyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMzQF-0002pC-RZ; Fri, 10 Apr 2020 19:34:39 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMzQ5-0002lu-8a
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 19:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586547265;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pSDLH5WsDUY0Ls+Yi5DMpK6wFwspuCJoAo5jQ7V/Ijc=;
 b=HTjtrTCPCtqlucaZeYXO9hdRWKKNAckT7ekZDJXF4mJhpipaNA9I2CNaZ2kSj9hZ8JMDfd
 x8O+SqhSx6dStv8V30+AeWP2e15nVJrSHFhqsats/yWfEKX2i5V8jL8upV5bG1UT+dmM/5
 7kohKTXNMLmKBR1LDF3Ev3cAOymTgN8=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505-VPqh-TJFPLits0HAweB96w-1; Fri, 10 Apr 2020 15:34:23 -0400
X-MC-Unique: VPqh-TJFPLits0HAweB96w-1
Received: by mail-qt1-f199.google.com with SMTP id x7so2670314qtv.23
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 12:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dR0pnT92lTl7PiXH1/vycyqLlKqG/upjftJ1HpISkMA=;
 b=i4oGko1NpxFOR4Cx58pNQQbVHOF1ykJRO/W5sEkHtjDuQ4tPzOGGJhufkaQunhMOxU
 U2CD0cnb1FpdEwf2XwuJP/kLkeGhqI5TUVhARdewkhVTnA+j7jJNNqVOgdGvgImTEuNj
 jzvNQeIgOynicjylie3zoqgg1wffoUg3Xca0eJNR2z17Rj0Cbi6iuTi1fXxVt8+8eQwS
 5NzmU7SImqc0u7CQTpIT1xUvHAIecjtOmsaZy1jEbD1vLZWNXgjNskek+8h+yE/7y+bz
 FHwiZj701++3+GpUZylwwFiXHHmcmzGF8+FB8+B5xCOLSRLtGgG9q/egIDBLbRIOVrKV
 SDlw==
X-Gm-Message-State: AGi0PuanJkDBn5cKkJOPIH84D1UCbW7Hu3mlzHZhUpPGa6g/VzLslbkG
 av7ZlDr6kEy1vGhwbW54IE4nfrzl/4/QJHpfL86fsJZZoHAr7TCvzKoytARz48Fuw3ChvDnpxq2
 CcpTwhG/C6FjGO97BT30rCTj+QllKj2JGcTo=
X-Received: by 2002:ac8:6d06:: with SMTP id o6mr768750qtt.165.1586547263230;
 Fri, 10 Apr 2020 12:34:23 -0700 (PDT)
X-Google-Smtp-Source: APiQypKE+9gdKAAzqM7E075abKl7yEhzpSisddiPAFgdbjLHprLwAVDEdymEnBo0qMB8GT4NFqVJjg==
X-Received: by 2002:ac8:6d06:: with SMTP id o6mr768725qtt.165.1586547263017;
 Fri, 10 Apr 2020 12:34:23 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id m11sm2214328qkg.130.2020.04.10.12.34.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 12:34:22 -0700 (PDT)
Date: Fri, 10 Apr 2020 15:34:19 -0400
From: Peter Xu <peterx@redhat.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v2 3/4] hugetlbfs: remove hugetlb_add_hstate() warning
 for existing hstate
Message-ID: <20200410193419.GF3172@xz-x1>
References: <20200401183819.20647-1-mike.kravetz@oracle.com>
 <20200401183819.20647-4-mike.kravetz@oracle.com>
MIME-Version: 1.0
In-Reply-To: <20200401183819.20647-4-mike.kravetz@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_123429_376056_0A242380 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 11:38:18AM -0700, Mike Kravetz wrote:

[...]

> @@ -3255,7 +3254,6 @@ void __init hugetlb_add_hstate(unsigned int order)
>  	unsigned long i;
>  
>  	if (size_to_hstate(PAGE_SIZE << order)) {
> -		pr_warn("hugepagesz= specified twice, ignoring\n");
>  		return;
>  	}

Nitpick: I think the brackets need to be removed to follow linux
coding style.  With that:

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
