Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E9ED8AF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Uo8igl2S0lnGrGCDs8JQoOYhVn5uCT9cqffL/2UwT0=; b=uyyTzDB4lx7FYI
	0H8ZaogwyLkYW2UxuxT6/jnwnP3V22isOWCys+chtvHTHUPQNdv4ps8jdvX3lHFBJxIeOmCJjgiWJ
	QhCY1RB4wSVlVQBKdDen12N+oSEaQMcQ3oeCDsjwoifar65Vb+yD+2JIMn6NfkSONBfVXJfq29ble
	gOKHM9jdCA81EYWNR3NPga510mEvlE1EtLnt1QnBpX5M545+d9secnoKPEq3udJ7hg9diZGHVXUHQ
	jC/3C4XEd5KrA5PmvC6XGzUcJqoMeWNjL1vB1kzDNpisGNthU6Osjr0Q4MMr+4Q2UDTDsfq5d5H2y
	audZqFkCViduJlgFnV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKefu-0001v2-HS; Wed, 16 Oct 2019 08:28:54 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKefj-0001uV-DJ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:28:44 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9G8RNlG126497
 for <linux-arm-kernel@lists.infradead.org>; Wed, 16 Oct 2019 04:28:43 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vnyevgpru-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 16 Oct 2019 04:28:42 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <heiko.carstens@de.ibm.com>;
 Wed, 16 Oct 2019 09:28:40 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 16 Oct 2019 09:28:33 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x9G8SWqN19661040
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 08:28:33 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C7E88A4057;
 Wed, 16 Oct 2019 08:28:32 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1C7A3A4040;
 Wed, 16 Oct 2019 08:28:32 +0000 (GMT)
Received: from osiris (unknown [9.152.212.85])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 16 Oct 2019 08:28:32 +0000 (GMT)
Date: Wed, 16 Oct 2019 10:28:30 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2 00/29] vmlinux.lds.h: Refactor EXCEPTION_TABLE and NOTES
References: <20191011000609.29728-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
X-TM-AS-GCONF: 00
x-cbid: 19101608-0016-0000-0000-000002B87DFE
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101608-0017-0000-0000-000033199F8D
Message-Id: <20191016082830.GC4267@osiris>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-16_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=958 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910160075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_012843_457676_C6EE05FE 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Note: SpamAssassin invocation failed
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Borislav Petkov <bp@alien8.de>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 05:05:40PM -0700, Kees Cook wrote:
> Arch maintainers: please send Acks (if you haven't already) for your
> respective linker script changes; the intention is for this series to
> land via -tip.
> 
> v1: https://lore.kernel.org/lkml/20190926175602.33098-1-keescook@chromium.org
> v2: clean up commit messages, rename RO_EXCEPTION_TABLE (bp)
> 
> 
> This series works to move the linker sections for NOTES and
> EXCEPTION_TABLE into the RO_DATA area, where they belong on most
> (all?) architectures. The problem being addressed was the discovery
> by Rick Edgecombe that the exception table was accidentally marked
> executable while he was developing his execute-only-memory series. When
> permissions were flipped from readable-and-executable to only-executable,
> the exception table became unreadable, causing things to explode rather
> badly. :)

Feel free to add
Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>
to every patch in this series which touches s390.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
