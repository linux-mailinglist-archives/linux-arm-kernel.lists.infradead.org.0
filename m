Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E03910C621
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 10:44:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLSj8h8asGeTReDJbXA7fCHGu0ceKYUHyrh72a9ptus=; b=DAQaxOwN1HhRCF
	KjqssghNu1qJYc14hLo4KiodY6Lsv+ieBahn1fmesJKqmJ6Z28w7hYJbmvTnI/YNtoWvI5SKZ0gYb
	OgjLYJHfJnSgtJfT6aBDOj8wV1k4J1jBs4ogNfiWzeEv6wtr2Hy+SEpX6TvZmK4YsIGXamQYir8Lb
	BLDLgmYkDIkhrch1+oJnlFkbLQw/1AAv9uBMhDNK8oOcW+/TwkebqHoRyrJRJLQUU+RyamwVm8wdT
	Fn4wNe/80wW49rD/wYiVVgW8T9XRw2OsgTelAYWFr/YfU2nErovL85idtG8g1pN68yKa8yiCaNAAE
	VilZ4PA0yVabQ1rGl5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGLs-00073x-UW; Thu, 28 Nov 2019 09:44:44 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGLl-00073S-D5
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 09:44:38 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 1C52C2056B;
 Thu, 28 Nov 2019 10:44:36 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 02CAB20234;
 Thu, 28 Nov 2019 10:44:35 +0100 (CET)
Subject: Re: [PATCH] KVM: vgic: Use warpper function to lock/unlock all vcpus
 in kvm_vgic_create()
To: Auger Eric <eric.auger@redhat.com>
References: <1574910551-14351-1-git-send-email-linmiaohe@huawei.com>
 <cdd7ef36-70ae-3e56-2ea3-48d7051991c3@redhat.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <7edeadc5-4af8-9539-59a5-d8f823de7fc0@free.fr>
Date: Thu, 28 Nov 2019 10:44:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cdd7ef36-70ae-3e56-2ea3-48d7051991c3@redhat.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Nov 28 10:44:36 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_014437_591264_0333159A 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 10:07, Auger Eric wrote:

> s/warpper/wrapper and also in the title.

Warp functions sounded very cool ;-)

"Beam me up, Scotty. There's no intelligent life down here."

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
