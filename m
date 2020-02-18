Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1D4163071
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFXxxhN77e8+vxAq/gCghXRccY1gZdjqnd7bbdrEEYI=; b=YF3NgT+z27CYf8
	rMv1hziiwQxqJH3PwHRdnO2hMF6X9p4uJrcekozcwDTRkS+WCRORebyGpa4AbvsEKF1mqmRCd4iIH
	2x3cIyslOH5NBLM4ffr9+aWxd6n8pgVA2/7g+TPiOK5j4+nYXKqL1UUffAPdh85eEZGC0gOgPhXtx
	x+HWCRFYyEd44vRYwA9wxDDy3s/oDDVL4SpfzzJdWfEbh8PjFmESbPA3JmtofBBV7B1hL/H9FqWZh
	3FRZ5ozoQ0kpEWB85puiUPlEEenxne+IkeHbRpLXYK90Ewrg6k+0JArCs2GNFWiAgGMnDnwqRsze4
	5QctUI769X04VTum4zzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48oB-0000nH-GR; Tue, 18 Feb 2020 19:45:27 +0000
Received: from namei.org ([65.99.196.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48o3-0000ms-Gd
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:45:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 01IJhv9J016349;
 Tue, 18 Feb 2020 19:43:58 GMT
Date: Wed, 19 Feb 2020 06:43:57 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v7 09/12] drivers/perf: open access for CAP_PERFMON
 privileged process
In-Reply-To: <48baecd5-a015-3dbf-f774-9f2caee13893@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2002190643390.10165@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
 <48baecd5-a015-3dbf-f774-9f2caee13893@linux.intel.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_114519_632594_70961341 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-man@vger.kernel.org,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Stephane Eranian <eranian@google.com>,
 Paul Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
 Ingo Molnar <mingo@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Will Deacon <will@kernel.org>, Helge Deller <deller@gmx.de>,
 Igor Lubashev <ilubashe@akamai.com>, oprofile-list@lists.sf.net,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020, Alexey Budankov wrote:

> For backward compatibility reasons access to the monitoring remains
> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage
> for secure monitoring is discouraged with respect to CAP_PERFMON
> capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>


Reviewed-by: James Morris <jamorris@linux.microsoft.com>


-- 
James Morris
<jmorris@namei.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
