Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC4AB7214
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 06:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bgb5bwzXLvsqoG04nTjXINWaPJeO0URUEmO9d/kjVT0=; b=BFzXugzefthPpiK0+z8koh2Ub7
	4A/wyAiFl1fc+hW3cffPPsA0zG6b++u0g4ez4OLiBLBhnecqW8w1fT4HBrogULezxB9AGFP1x+qp5
	+ouiS4X6dm4Zs/uyFP8d8gygnWkod7zActB+yzVq0INre95ykGJFBe580O5AHQiwiQSTQPC5Cx1+E
	GBwpH04rqKkSW94FisrVQVVNymkf1kF4rFdjcJ4YQTbTTm0kk6AoJPSTVbshpKpY5+fzUAkiN/dfg
	QqwPJWPTNWx++BDjmQzLBbR0r76kLEjiAg5v6VsGRbT0JjlYRYkvstdULTQwjCju4K+BvejsoJ3SV
	6a/dNjgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAncP-0008Tj-75; Thu, 19 Sep 2019 04:00:33 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAnc2-0008S5-TU; Thu, 19 Sep 2019 04:00:13 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8J3vSTd042757; Wed, 18 Sep 2019 23:59:28 -0400
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com
 [169.55.91.170])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v3ve896ky-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Sep 2019 23:59:28 -0400
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
 by ppma02wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x8J3tIOP010643;
 Thu, 19 Sep 2019 03:59:26 GMT
Received: from b01cxnp22035.gho.pok.ibm.com (b01cxnp22035.gho.pok.ibm.com
 [9.57.198.25]) by ppma02wdc.us.ibm.com with ESMTP id 2v3vbtt8s1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Sep 2019 03:59:26 +0000
Received: from b01ledav005.gho.pok.ibm.com (b01ledav005.gho.pok.ibm.com
 [9.57.199.110])
 by b01cxnp22035.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x8J3xQVi54001986
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Sep 2019 03:59:26 GMT
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 633B8AE05C;
 Thu, 19 Sep 2019 03:59:26 +0000 (GMT)
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 53748AE05F;
 Thu, 19 Sep 2019 03:59:22 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.160.236])
 by b01ledav005.gho.pok.ibm.com (Postfix) with ESMTPS;
 Thu, 19 Sep 2019 03:59:22 +0000 (GMT)
References: <20190913225009.3406-1-prsriva@linux.microsoft.com>
 <20190913225009.3406-2-prsriva@linux.microsoft.com>
 <1568816111.16709.68.camel@linux.ibm.com>
 <1568841696.4733.3.camel@linux.ibm.com>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Mimi Zohar <zohar@linux.ibm.com>
Subject: Re: [RFC PATCH v1 1/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
In-reply-to: <1568841696.4733.3.camel@linux.ibm.com>
Date: Thu, 19 Sep 2019 00:59:11 -0300
Message-ID: <871rwd2ay8.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-19_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909190034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_210010_957029_B057D4E2 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Prakhar Srivastava <prsriva@linux.microsoft.com>,
 yamada.masahiro@socionext.com, kristina.martsenko@arm.org, duwe@lst.de,
 allison@lohutok.net, james.morse@arm.org, linux-integrity@vger.kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Mimi Zohar <zohar@linux.ibm.com> writes:

> On Wed, 2019-09-18 at 10:15 -0400, Mimi Zohar wrote:
>
>> > +	uint64_t tmp_start, tmp_end;
>> > +
>> > +	propStart = of_find_property(of_chosen, "linux,ima-kexec-buffer",
>> > +				     NULL);
>> > +	if (propStart) {
>> > +		tmp_start = fdt64_to_cpu(*((const fdt64_t *) propStart));
>> > +		ret = of_remove_property(of_chosen, propStart);
>> > +		if (!ret) {
>> > +			return ret;
>> > +		}
>> > +
>> > +		propEnd = of_find_property(of_chosen,
>> > +					   "linux,ima-kexec-buffer-end", NULL);
>> > +		if (!propEnd) {
>> > +			return -EINVAL;
>> > +		}
>> > +
>> > +		tmp_end = fdt64_to_cpu(*((const fdt64_t *) propEnd));
>> > +
>> > +		ret = of_remove_property(of_chosen, propEnd);
>> > +		if (!ret) {
>> > +			return ret;
>> > +		}
>> 
>> There seems to be quite a bit of code duplication in this function and
>> in ima_get_kexec_buffer().  It could probably be cleaned up with some
>> refactoring.
>
> Sorry, my mistake.  One calls of_get_property(), while the other calls
> of_find_property().

of_get_property() is a thin wrapper around of_find_property(), so if
that's the only difference I think they can still be merged.

-- 
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
