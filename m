Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0F21975F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 09:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Be5s4tJCM4nncUWPvhh68S7ESfnHA9Pp1HSwoeMQedA=; b=uyhoCPFgVYN8Qn
	tlvSB3pHaD67zqn0FzvVmHdIP/b7raqh6I72CPaM+h4VxgMvzSGceZAtozQBCZ+ogbvmhjDDs4VVM
	DkN6RWZtIr2tzs8Hoz8dQRtf9v7djo3/oKy0Xs2WnZGb3XPuq04/CBEQ5pMjc8nsF/xNED28XaUSb
	I2vFD5nDleIftBHpVrjq9KURTV1+9bw4mIKbpEC9eO38qabSyQjGC3ZGZp77yAlYWmAQvtWQUgg+6
	QC0Ewu4XE3QO6I97BaSiNbphLQ8DWLmmmMgKGzWGIZgHHogHcnbbq9xOtGdorBuC/yDi4WOSjZLPX
	B6z9sp0pNSraHkI56UYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIp6B-0007VH-Cn; Mon, 30 Mar 2020 07:44:43 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIp5x-0007UA-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 07:44:31 +0000
Received: by mail-wm1-f68.google.com with SMTP id g62so20753806wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 00:44:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+lQxT4rOXYS7igvmWe+aSLt8H9b/hooDSaFj9dpIoBo=;
 b=GWlysO9poOwt3kNMABMuxpaumpcMPs8oyR9v9DTCCc6Uau0cVyVvyogKH5p8FiUVZj
 +7UO68FeBO8xusWaGYV1IIqwFkR7eOxYHKyOGpPUT00QyJLP5uGwvUvLLGEQisOBspFJ
 WaNrcpuE2JJxwI5N73LfMPqXlxMWrBvzE5PUTjN25oOgUF5RWXnsFc6vbhPCjExObWpz
 MiN9BX1AV4Vx4JhRH50IM7l29OloU+Lsbu7RInxqLtPFAHbrjndKD5cpd5wRBWvPLela
 +8WE/BqYPxhV2xLTo5MIqPyYV+J/E/1XpNkxo2eCRJv1jsIliJFO1OFGcUsHsKJtqR/g
 asEg==
X-Gm-Message-State: ANhLgQ3sD2iyXV8PV4e4+SGmo88TL92sG5I93fitUrUORs2mk99AGLB3
 aO5AuYYqs3j9xkA+jqUCltY=
X-Google-Smtp-Source: ADFU+vv5zPfvR6n12LY62/oTKOim3ahnJoTy88I5ftZ61ckUgrrKlF39ljyabbjxRYuNzhw3oecv9w==
X-Received: by 2002:a7b:cc06:: with SMTP id f6mr11831239wmh.65.1585554268222; 
 Mon, 30 Mar 2020 00:44:28 -0700 (PDT)
Received: from localhost (ip-37-188-180-223.eurotel.cz. [37.188.180.223])
 by smtp.gmail.com with ESMTPSA id p16sm20037964wmi.40.2020.03.30.00.44.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 00:44:27 -0700 (PDT)
Date: Mon, 30 Mar 2020 09:44:26 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200330074426.GB14243@dhcp22.suse.cz>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200329001924.GS3039@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329001924.GS3039@MiWiFi-R3L-srv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_004429_861092_3A002760 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun 29-03-20 08:19:24, Baoquan He wrote:
> On 03/28/20 at 11:31am, Hoan Tran wrote:
> > In NUMA layout which nodes have memory ranges that span across other nodes,
> > the mm driver can detect the memory node id incorrectly.
> > 
> > For example, with layout below
> > Node 0 address: 0000 xxxx 0000 xxxx
> > Node 1 address: xxxx 1111 xxxx 1111
> 
> Sorry, I read this example several times, but still don't get what it
> means. Can it be given with real hex number address as an exmaple? I
> mean just using the memory layout you have seen from some systems. The
> change looks interesting though.

Does this make it more clear?
           physical address range and its node associaion
         [0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1]
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
