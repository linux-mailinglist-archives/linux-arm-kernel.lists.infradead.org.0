Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798D0138CB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LrJC+eGMKhzCk5snzO+WOmsvNEdOd2HhSaaww7rRAyc=; b=DKyJI/dOfoVLhVKBYrrfV/nak
	J4PPd5iDA3s3qvjgF7ITOuRikJxFZpJPV5BlyqVrSfL/MYivebwWMglaMUjlxcEoZTkxiFZptEMwC
	6jTwYJGr63ffidbD7g6FJ/+s4C77+qgNgi0msDDZiTCQV3IzDJCT3G5qtm1WF8gXcYZuGyzByLUyB
	EfIuKZDielXrKGgsH9V17kxwf/2j70gQ/BfKB0GeQboTWogWRmZKxy3C5xiiXnnE2eMfzFpRgGe6D
	MIFiYWTXbXFeoKxXfyyTSy5avzvpEPdvFCuYCTB6MQoQBOgqs4D9Ehh2/PJ8EaWlZyV1yBw5IUSmH
	DaSIGx6ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iquuj-0000em-Le; Mon, 13 Jan 2020 08:17:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iquuZ-0000dl-O4
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:17:25 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00D8ENoO003461; Mon, 13 Jan 2020 09:17:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=BNM4YoMzz8mNUvF1txkbtT7/0heb6WHqiZtZ1ldOKhw=;
 b=qPoyNKH8jTIWXU82omvks7gDUV71lAKVshmwiphNM1ReCj6JiZZ6bPp3/pgnAekSihDC
 RUUhnOVJZirq6ZdKAGWeK0u23lxjzSMd452NLEb9EM7UXaZHjMuTLgfE7736DbUlBozb
 KhPWBtL9oh3yzDeLfTqrQYYxvTxwARKDMF90tv/HaOZ1FmVGN5Oh+MiZ+tqIhGD5WCGs
 /9q0HeU+/bOI6bhou9rrmZlNSTHHoIw/8SRr0Y4eccYqZgsBF4Zn5+p89Gda5sDFC6Gl
 Xa9fmHlvLuLrLEENXSjKC0e68J9Fm4MT5tTIMk2bFE5utK+fkJCzF43b66PSCj9ZRzys bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7jp6whm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2020 09:17:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CFEC210003A;
 Mon, 13 Jan 2020 09:17:09 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B4A912A4D88;
 Mon, 13 Jan 2020 09:17:09 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 13 Jan
 2020 09:17:09 +0100
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>, Olof Johansson <olof@lixom.net>
References: <20200113065808.25f28c40@canb.auug.org.au>
 <CAOesGMifHn6DbNgYm6YUbdKjSL5rNgdWrq+HX9dEusrOr9xX2A@mail.gmail.com>
 <20200113113837.130c3936@canb.auug.org.au>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <caeb1af8-4aa2-71dc-0a70-127c0b474f93@st.com>
Date: Mon, 13 Jan 2020 09:17:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200113113837.130c3936@canb.auug.org.au>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-13_02:2020-01-13,
 2020-01-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_001724_247344_88B6EF9F 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Yann Gautier <yann.gautier@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys

On 1/13/20 1:38 AM, Stephen Rothwell wrote:
> Hi Olof,
> 
> On Sun, 12 Jan 2020 11:59:58 -0800 Olof Johansson <olof@lixom.net> wrote:
>>
>> Thanks for the report. Time to automate this at our end, we've had a
>> few too many of these slip through all the way to you lately.
>>
>> Where do you keep your scripts that you catch these things with? Do
>> you have a writeup of the checks you do? I should add it to my
>> automation once and for all.
> 
> I should export my linux-next scripts as a git repo, but I haven't (yet) :-(
> 
> Attached pleas find check_commits which I run after fetching each tree
> and pass the changed commit range.  This, in turn, runs check_fixes
> (also attached).
> 


Sorry for this oversight. DO I have something to do ? (except to not 
forget to check my signed-off next time).

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
