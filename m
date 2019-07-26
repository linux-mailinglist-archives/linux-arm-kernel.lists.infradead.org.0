Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A959976EC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ixf9ThXqDZhIhvNx167uM0ik/4iAFpGYfpwCZ9Gf1BE=; b=a6pCh6OjRgDRD022PCIJd0+ps
	M9KzDKUng3tttj7Z/9B7M+WTubH9+grLQDupKuPljp1G44gZBhf20oHUB1sRqtXuAbJXj8Xao3D1s
	qcphOn+MH8R16IVHsavAePKb7sjpcShwHVcyXfcBsXt74et17QIYMBY2EZ9Y+KTzJDhMtBi8VcMeb
	x20V5QW654aho90DiRt9i/E9eZDJQk+hgs7KGC2Ano+aRYcjZseZooXEnxKOrC0cWUEVpYPkCWfR6
	vx1RakOigDo62V+GbHeymv4LzmJwB++Wm1Z1zmOn0HTsQdMR51K8aoRb8+ONNgwIJ31pqj0n6+PxZ
	SnPqiYR+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr2vp-0005c6-By; Fri, 26 Jul 2019 16:18:57 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2vf-0005bD-VI
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:18:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6QG6Hpo030144; Fri, 26 Jul 2019 18:18:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=IXxLWvTNmiUU59JMUeszE0o+fXSHf9wp+bJ4iqAv/do=;
 b=U88KFzuVSXQpIKzDDIIFqcilRxMXyICiEVyjCMNY+rbxk9rSKnFDcH/P278PPIbd4rLf
 aPDtJWnkFTk9gQFloRyeusVw4Dx/TADtO+SHjPK2xrfnFjXoc0gGkfxP8zWKu7IN5wFh
 AiC+yx8mYfw3irtzXVPlv690ZPfQvA1xaKmmxypjVC2uIeQC6vfR9w8T6W4QnM85zDet
 wWQNU8sEubADekjpmE28/XSiEcRq/cGjNXAqKvvmfW5X3HCC/8IJOIOffSRUpFb9yljP
 CuB400jQn4GQzeKNj69eW6R8Okf8JVlYPImBfQCVDv7HKdhS2zXXb62smI2pbOKo8rhJ bA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tx604bj0f-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 26 Jul 2019 18:18:39 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 08D2E31;
 Fri, 26 Jul 2019 16:18:39 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D00874FB7;
 Fri, 26 Jul 2019 16:18:38 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 26 Jul
 2019 18:18:37 +0200
Subject: Re: [PATCH v4 0/8] stm32 m4 remoteproc on STM32MP157c
To: Fabien Dessenne <fabien.dessenne@st.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>, Bjorn
 Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
References: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <334f2829-fa5e-3f81-5872-730b2aa8b757@st.com>
Date: Fri, 26 Jul 2019 18:18:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-26_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_091848_373787_1C45758B 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Ludovic Barre <ludovic.barre@st.com>, Loic Pallardy <loic.pallardy@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabien

On 5/14/19 10:26 AM, Fabien Dessenne wrote:
> STMicrolectronics STM32MP157 MPU are based on a Dual Arm Cortex-A7 core and a
> Cortex-M4.
> This patchset adds the support of the stm32_rproc driver allowing to control
> the M4 remote processor.
> 

...

>      driver
>    remoteproc: stm32: add an ST stm32_rproc driver
>    ARM: dts: stm32: add m4 remoteproc support on STM32MP157c
>    ARM: dts: stm32: declare copro reserved memories on STM32MP157c-ed1
>    ARM: dts: stm32: enable m4 coprocessor support on STM32MP157c-ed1
>    ARM: dts: stm32: declare copro reserved memories on STM32MP157a-dk1
>    ARM: dts: stm32: enable m4 coprocessor support on STM32MP157a-dk1
> 

DT patches applied on stm32-next.

Regards
Alexandre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
