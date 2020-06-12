Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5F81F7C97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 19:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liqpfYcQMdEXMItWDEg05pGj23RM37yC5OakmrsFTQw=; b=f2eXITNVBSwFMy
	uQpp6m70+rqLVzrB1PFv1pUptjfF9TBektM8Jap6/r8rH1Y3weUgdPB15yD3NHw+kvHcIyFmUcnYs
	jpRCr28RLbJRP0o+QAK/448WW/xvbQoDp4MAp2vM002gWgqVk1pF1Y0IdKPb8NrXi1Zm0gHdilGHf
	ro8dw4i6Qwr1u8bfXQy2WUzmHvDkT8pS68dFsXT0Z/YSt+/W0ETu34U2ENZQjvMs0Lp/Yk+NUocCE
	3MS8arV+w3e3t2MA9gjJcjT3M2c8YCQnrHQFxRFaPI8N07axuYwe2+r1npNAresGfoUobpaGJqhjv
	lhdGDU07tDnd0ay0mF/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjnim-0005ap-B9; Fri, 12 Jun 2020 17:44:04 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjniZ-0005a6-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 17:43:52 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05CHh9hb020476;
 Fri, 12 Jun 2020 17:43:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=sDXzqeSxZKG8oEBI8F3mco5PsGVz1ZSzi3GmCkClRpM=;
 b=dLaoF70Ho+GVFZ+vOzknqvVG7qIkq9hVDWyW9ONL3/v5dj3g3fENcu4GYiCbGw1vUpKH
 t2swAKm2sSFIPp2WiVj2hzLY092JfOMMw+odVzo5mUga+aoYThxeIpAYhYFgc81i0DTZ
 6qcNMH1k2Peu8NmEetS8w8yWaoEgQtk/OtcDe+hy3EtqPMDvVXViI4FOQZGqpGI2/IDC
 tzfzVFqDAhfHsf8w8PsWktkSu08S/IUrdx6Xow9G+e5W+imuYIa6Xayf4sHQ80/6cpL/
 HtRKoOPWb7Q/TPaX/5MiSYS/lqRn+atHx+We53N3nT2RRG6onwl9n7felGhcUjSMebF3 oA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31jepp7xvg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jun 2020 17:43:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05CHgkrC132293;
 Fri, 12 Jun 2020 17:43:34 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 31mebng8pe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Jun 2020 17:43:34 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05CHcjqF028407;
 Fri, 12 Jun 2020 17:38:46 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 12 Jun 2020 10:38:45 -0700
Date: Fri, 12 Jun 2020 20:38:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH] coresight: cti: Fix error handling in probe
Message-ID: <20200612173838.GH4282@kadam>
References: <20200612121047.GF4282@kadam> <20200612121133.GA1139533@mwanda>
 <6c59bdbc15714b089d256ad50aee58cb@bfs.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6c59bdbc15714b089d256ad50aee58cb@bfs.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9650
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 malwarescore=0
 spamscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006120128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9650
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 cotscore=-2147483648 adultscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006120128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_104351_362756_9804FA21 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 02:11:16PM +0000, Walter Harms wrote:
> Hi Dan,
> 
> nit picking in cti_pm_release()
> 
> IMHO this should be done in 2 steps:
>       if (--nr_cti_cpu == 0)
> ->
>   --nr_cti_cpu ;
>  if ( nr_cti_cpu == 0)

The first way is sort of the more canonical way to write it...  By far.

regards,
carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
