Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E59F9CCBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RBHjIq5+OI+sLR0pQSqvt/wyxNoRQnItj0rB4X9HCEM=; b=IFWt7P2LdwGigZkeOuby5ATY3
	Rc6kjoCKXxiiKfOF8iYz+DKZBBcdHbjUTnoRQ4hdZerk6L2WPODUhdiuYnRPsxN5/AB2LxW15nL+U
	t5sGVFMi5GSjd4fxb6e1Fm8c6nvP7Aa3HdZtAM+QBziv4FssIZ7BwgneDKZpSSYNXyWEDviiPqycp
	QwLzBesYFGhbaL5dfAWjWDUW5PZzavkpEesMwrs8jbgF0XB6Jnv/DgUwTt0uN8+8ZwRfSTykSsmPR
	I77bTNOup9CcAbfMkYIPhTtTheExBJKB0LoARJEf//FRfim5bESwI0iqNMmdvajGlcj+I+5kjnrn5
	Rm8eZWiOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2BYG-0004lg-MO; Mon, 26 Aug 2019 09:44:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2BY4-0004l4-C9
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 09:44:30 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7Q9flPh019662; Mon, 26 Aug 2019 11:44:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=VTmTOEmJtBhkUABaG/XSF9y7CY7sNsb6fCHiw63nQjM=;
 b=s7risFeSlR3qAFh9zk6ZVfvYjWJzNQfjHqNtgkWelXFWXeLacjP9j6QoUQPKzpUC7HE2
 FXbCdpkCNBG7VaFodiobUYUMlvq1tD242iFIxBuzUkucS+qiesrMfXOCCvpemIYPsiai
 NWSWOXJ7KwUverZ5yXaO9SFyi5KkJmQMbbbDXpitPqHUdsTLJKJKmYyZunigA+XoSPll
 2jDpdPuDFW1ggPgsvVJRo/2dSumFHpT5dexbo4LKVP9DYJOjk1eSwUJmYB7Bq5nJHE0/
 zJYfz6ioajIH7AgiMBVf6gPG+TvcNQ6Pz0iAOqVsqbMcwhEVbvX/EjF122kMLrR+NjAo qg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ujtq1314w-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 11:44:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DA5A231;
 Mon, 26 Aug 2019 09:44:08 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BFB2D2D49C0;
 Mon, 26 Aug 2019 11:44:08 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 26 Aug
 2019 11:44:08 +0200
Subject: Re: linux-next: Fixes tags need some work in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>
References: <20190814002836.4b6aa14b@canb.auug.org.au>
 <CAK8P3a2q1mShg-EQhiAFUOAET8UEMHfLJV-+HoLTaSQY+M7yBQ@mail.gmail.com>
 <20190814074730.402ec3ec@canb.auug.org.au>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <f4e0e924-03ea-bf63-85a0-5718874ceb38@st.com>
Date: Mon, 26 Aug 2019 11:44:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814074730.402ec3ec@canb.auug.org.au>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_024428_892025_6E7ECF6B 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Olof Johansson <olof@lixom.net>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys

On 8/13/19 11:47 PM, Stephen Rothwell wrote:
> Hi Arnd,
> 
> On Tue, 13 Aug 2019 21:35:58 +0200 Arnd Bergmann <arnd@arndb.de> wrote:
>>
>> On Tue, Aug 13, 2019 at 4:28 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>>
>>>
>>> Please do not split Fixes tags over more than one line.  Also, please
>>> keep them with the rest of the other tags.
>>
>> Thanks for the report. How bad is this? Should I undo the merge and
>> wait for an updated pull request?
> 
> Its probably ok to leave as long as lessons are learnt :-)
> 

Sorry for my late answer.

Thanks Stephen for information. I'll take care next time before merging 
patches with "fixes" tag.

Arnd, no need to update the PR ?

regards

Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
