Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F7315A9C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 14:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfQHLl3Xq1T4ps/QyyleIIGzISfWuPlleIij3fPa69E=; b=dUR1lUPAFA3+aG
	iLXvrqLwxaDq20nXb14cjdlVVNeQ1MgjcG7dDRWb7WTIN4XhwBQxfWNICAtPOV786WZZP3wd1RpdY
	uyWYdoJhMP1QVV/YLMfKex8MYGp1G3Rl39FkTrRi9G/FnBJB2zkrdbMuupRiqm4u4sGOZXZ8mW9yz
	BnjpjWreQKVJWIHy9gjSYkxSmS4zx0LjdszLjAZBa4CtPR80moxlP3+zsq5KrtiHNUxlDAc0QgAdW
	obGPD3TGoYn4kQP1gS2z1SM4dmdn3fLRKY40pEsfmC7D5wTt7rwv/zcQX0vPE48R3aYp8KOhbBQQt
	Z/mQWvL6TnsfvifAG59w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1rnT-0003rW-Kj; Wed, 12 Feb 2020 13:11:19 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1rnJ-0003qo-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 13:11:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 05:11:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="347513465"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga001.fm.intel.com with ESMTP; 12 Feb 2020 05:11:05 -0800
Subject: Re: [PATCH v4 0/4] perf tools: Add support for some spe events and
 precise ip
To: Jiri Olsa <jolsa@redhat.com>, James Clark <james.clark@arm.com>
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com> <20200212122425.GA194466@krava>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <abac26ad-2b27-0bc7-d1d6-9a92ece3718e@intel.com>
Date: Wed, 12 Feb 2020 15:10:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200212122425.GA194466@krava>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_051110_710489_F1216A82 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nd@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/02/20 2:24 pm, Jiri Olsa wrote:
> On Tue, Feb 11, 2020 at 02:04:41PM +0000, James Clark wrote:
>> Hi Jirka,
>>
>> Oops. I've removed all the changes to evlist.c and evsel.h
> 
> hi,
> it looks ok from my POV, but I don't follow auxtrace that much
> 
> Adrian,
> it's changing some generic bits of the auxtrace framework,
> could you please check?

Sure, in the next few days.

> 
> thanks,
> jirka
> 
>>
>>
>> James
>>
>> Tan Xiaojun (4):
>>   perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
>>   perf tools: Add support for "report" for some spe events
>>   perf report: Add SPE options to --itrace argument
>>   perf tools: Support "branch-misses:pp" on arm64
>>
>>  tools/perf/Documentation/itrace.txt           |   5 +-
>>  tools/perf/arch/arm/util/auxtrace.c           |  38 +
>>  tools/perf/builtin-record.c                   |   5 +
>>  tools/perf/util/Build                         |   2 +-
>>  tools/perf/util/arm-spe-decoder/Build         |   1 +
>>  .../util/arm-spe-decoder/arm-spe-decoder.c    | 225 ++++++
>>  .../util/arm-spe-decoder/arm-spe-decoder.h    |  66 ++
>>  .../arm-spe-pkt-decoder.c                     |   0
>>  .../arm-spe-pkt-decoder.h                     |   2 +
>>  tools/perf/util/arm-spe.c                     | 756 +++++++++++++++++-
>>  tools/perf/util/arm-spe.h                     |   3 +
>>  tools/perf/util/auxtrace.c                    |  13 +
>>  tools/perf/util/auxtrace.h                    |  14 +-
>>  13 files changed, 1089 insertions(+), 41 deletions(-)
>>  create mode 100644 tools/perf/util/arm-spe-decoder/Build
>>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
>>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
>>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
>>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (96%)
>>
>> -- 
>> 2.17.1
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
