Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F66DC1C08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 09:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qv2sUFMy5aY+dFBYu7G2NierzNoWHXUXAfjULI3xq7M=; b=h1MvjlChktopic
	NOBoBOiWLI7pLhlSXFq197LTJgxz8HV8thpeSnFlMxutWrlyIg1COvwe/CLzRwgWPFEMMSCEKwjzO
	MG3omRBvCdoI/CppILzyPGyzPy6pmKpFJAVFzD47/1OrBp3Erx/DGVUuiK59NnNUX0oNGOaKlC8hy
	/TlpqPIz+cnktzthCU72eVedXYd98eHCpdWbhsEf/fKe1CBKogj162d1Y0eL3Divn/TYfqse7SvUT
	YgaWS1PH9X895PfnrstlGjXxLLMyWxx8VVBgzc/+TJh/+IX3vAG7YjMCm81lo2kXBfXPwd/hO01st
	g/aTufG3F8XFBIbsAeWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEq3Y-0008Ur-2a; Mon, 30 Sep 2019 07:25:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEq3P-0007Ll-Nb
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 07:25:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E8841AE7F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 07:25:01 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Yury Norov <ynorov@caviumnetworks.com>
Subject: Re: [PATCH 22/24] arm64:ilp32: add vdso-ilp32 and use for signal
 return
References: <20180516081910.10067-1-ynorov@caviumnetworks.com>
 <20180516081910.10067-23-ynorov@caviumnetworks.com>
X-Yow: Spreading peanut butter reminds me of opera!!  I wonder why?
Date: Mon, 30 Sep 2019 09:24:55 +0200
In-Reply-To: <20180516081910.10067-23-ynorov@caviumnetworks.com> (Yury Norov's
 message of "Wed, 16 May 2018 11:19:07 +0300")
Message-ID: <mvma7am2qm0.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_002507_928687_DF4A4B0C 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VDSO setup changed quite a lot in 5.3.  Do you have an updated
patch?

Thanks, Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
