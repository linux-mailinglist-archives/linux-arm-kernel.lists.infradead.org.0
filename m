Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAAB19569C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJwH010gnjFRFtXTnpD2HFW2FiOv/j2bfB54fXlLMz0=; b=UiBbDwo2GhBzaQ
	BUNEE2SNgIRips5YycM0Nxf6uLB4o/eFEEEU0DqsJirIi3AZVwRqaa1k2Tqdihf+EYJxnEL6BHQZt
	I0bEvmblTCAiffmO2iXDfAPjjX14DXBNeDrdC+MPoy+JUjFbgVEo7Osc/4bdmCYUa2ntdbhsVlBZP
	/Te7xY5xJNI0p8Et+q6HP2UlQrhQ5KnPwwLh+WChUaKyn/tyBIycc8nZYywK2H5QnySVbTYkTgRn3
	/9QjjXbh8sI6F19QWE70ceFlQcz6j3IQTonr/vdC6xnzDFOrzoee73vVDXaUJ/W6o8KD3zSokJh7e
	EnNnE6oqSdCsBjuYBdLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHnW7-0004qI-2C; Fri, 27 Mar 2020 11:51:15 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHnVs-0004oQ-Q1
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:51:02 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02RBn6Bc018997; Fri, 27 Mar 2020 06:50:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=U2zt+3OMfjozGKH48uShfLBqCKXb8nbcSzxsYJ1OIE0=;
 b=EAtLibjW2kZz6gWc9mlRfVmjcJql4GnQsUPTKPZ7u4CRLalnjOogshY3Lpbbwp6ElxlD
 3/jO8CA9zcma2snlb8Soq8l7xKLLIEUiv2DYNTS/ChFfa0Yc/ssHy4IvUmm58w2DtV7+
 6yDlDczvIdEsc+nlz/pqmExSWfjE/mY6JMCsFIe+02B9VDYFoG5TwJgeWTn5Y6vGs7oG
 BCoBadW5zdwZLbsgM/Y9PFL3x5n9w0978SGweH3YLPO+/gr96Gr1rV4fNxZCRWOP29fL
 SvcVWnMm/gn3EXcDI9XmAvwcF3fJzW8YYgTytafJ4sRMJDLrGaZExiUEqGJ9WSJhNdCo kw== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
 by mx0a-001ae601.pphosted.com with ESMTP id 2ywgb2k57b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 27 Mar 2020 06:50:49 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Fri, 27 Mar
 2020 11:50:47 +0000
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Fri, 27 Mar 2020 11:50:47 +0000
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id EF5542A1;
 Fri, 27 Mar 2020 11:50:46 +0000 (UTC)
Date: Fri, 27 Mar 2020 11:50:46 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH 1/1] ARM: mach-s3c64xx: convert to use
 i2c_new_client_device()
Message-ID: <20200327115046.GB5096@ediswmail.ad.cirrus.com>
References: <20200326211014.13591-1-wsa+renesas@sang-engineering.com>
 <20200326211014.13591-2-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326211014.13591-2-wsa+renesas@sang-engineering.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com
 ip4:5.172.152.52 -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 adultscore=0 mlxlogscore=783 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003270108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_045100_991730_FA036772 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.149.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 10:10:14PM +0100, Wolfram Sang wrote:
> Move away from the deprecated API and remove printing a stale 'ret'
> value.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
