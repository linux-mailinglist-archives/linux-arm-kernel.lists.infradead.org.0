Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E976B201F44
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8exNLRY/c/3uRfvbg9eosVvepUm3m/A3KwptK/lHpg0=; b=npXLRh5QYhtFdVAc6gwuw6EDwX
	zQkrmzdPvv6sA1xtR1U6FBUvagUO2HKqZsAlDZuOJXD7cPoFls0OlpwlNhf/42bKODoMm3wxA1js5
	VflfC6VfJEbjmuklSa/+bCKyayMI6MiRa4cR6sbkwj4Jud87nGapZFGNuBWA2gXirM3uYPjIraIDx
	7VHyIe0NC+skEoSJHMV3H28ctd03ITE2HS0hbVoayUN24tnQjXVTBW4iszP9aTjeYNastHN5r5qEh
	3Hfr/EK4mGkSYQDXO5Mln29RzHYiVtHrEaFGJHk5aFx4hg7L/80tvKPGHr4/t8utZSUda2O92mn1y
	t6ZKD3Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmRao-0000c7-Rh; Sat, 20 Jun 2020 00:42:46 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmRaf-0000be-Pb
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:42:39 +0000
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05K0WSwk183261; Fri, 19 Jun 2020 20:42:09 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31s0pbagqm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 19 Jun 2020 20:42:09 -0400
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05K0WcPq186459;
 Fri, 19 Jun 2020 20:42:08 -0400
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.11])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31s0pbagqa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 19 Jun 2020 20:42:08 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
 by ppma03dal.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05K0VFD0005552;
 Sat, 20 Jun 2020 00:42:07 GMT
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com
 [9.57.198.27]) by ppma03dal.us.ibm.com with ESMTP id 31q6c6faep-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 20 Jun 2020 00:42:07 +0000
Received: from b01ledav004.gho.pok.ibm.com (b01ledav004.gho.pok.ibm.com
 [9.57.199.109])
 by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 05K0g61K49938852
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 20 Jun 2020 00:42:06 GMT
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A88E7112062;
 Sat, 20 Jun 2020 00:42:06 +0000 (GMT)
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3890A112061;
 Sat, 20 Jun 2020 00:41:54 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.163.93.234])
 by b01ledav004.gho.pok.ibm.com (Postfix) with ESMTPS;
 Sat, 20 Jun 2020 00:41:53 +0000 (GMT)
References: <20200618071045.471131-1-prsriva@linux.microsoft.com>
 <20200618071045.471131-3-prsriva@linux.microsoft.com>
User-agent: mu4e 1.2.0; emacs 26.3
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [V2 PATCH 2/3] dt-bindings: chosen: Document ima-kexec-buffer
In-reply-to: <20200618071045.471131-3-prsriva@linux.microsoft.com>
Date: Fri, 19 Jun 2020 21:41:49 -0300
Message-ID: <87mu4yr2k2.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-19_22:2020-06-19,
 2020-06-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0
 suspectscore=0 priorityscore=1501 cotscore=-2147483648 lowpriorityscore=0
 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 impostorscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006200000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_174237_835677_D77D2176 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, benh@kernel.crashing.org, bhsharma@redhat.com,
 tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, will@kernel.org, nramas@linux.microsoft.com,
 frowand.list@gmail.com, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, serge@hallyn.com, devicetree@vger.kernel.org,
 pasha.tatashin@soleen.com, robh+dt@kernel.org, hsinyi@chromium.org,
 tusharsu@linux.microsoft.com, tglx@linutronix.de, allison@lohutok.net,
 christophe.leroy@c-s.fr, mbrugger@suse.com, balajib@linux.microsoft.com,
 dmitry.kasatkin@gmail.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, james.morse@arm.com, mpe@ellerman.id.au,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Prakhar Srivastava <prsriva@linux.microsoft.com> writes:

> Integrity measurement architecture(IMA) validates if files
> have been accidentally or maliciously altered, both remotely and
> locally, appraise a file's measurement against a "good" value stored
> as an extended attribute, and enforce local file integrity.
>
> IMA also measures singatures of kernel and initrd during kexec along with
> the command line used for kexec.
> These measurements are critical to verify the seccurity posture of the OS.
>
> Resering memory and adding the memory information to a device tree node
> acts as the mechanism to carry over IMA measurement logs.
>
> Update devicetree documentation to reflect the addition of new property
> under the chosen node.

Thank you for writing this documentation patch. It's something I should
have done when I added the powerpc IMA kexec support.

You addressed Rob Herring's comments regarding the commit message, but
not the ones regarding the patch contents.

When posting a new version of the patches, make sure to address all
comments made so far. Addressing a comment doesn't necessarily mean
implementing the requested change. If you don't then you should at least
explain why you chose a different path.

I mention it because this has occurred before with this patch series,
and it's hard to make forward progress if review comments get ignored.

> ---
>  Documentation/devicetree/bindings/chosen.txt | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..a15f70c007ef 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -135,3 +135,20 @@ e.g.
>  		linux,initrd-end = <0x82800000>;
>  	};
>  };
> +
> +linux,ima-kexec-buffer
> +----------------------
> +
> +This property(currently used by powerpc, arm64) holds the memory range,

space before the parenthesis.

> +the address and the size, of the IMA measurement logs that are being carried

Maybe it's because English isn't my first language, but IMHO it's
clearer if "the address and the size" is between parentheses rather than
commas.

> +over to the kexec session.

I don't think there's a "kexec session", but I'm not sure what a good
term would be. "linux,booted-from-kexec" uses "new kernel" so perhaps
that's a good option to use instead of "kexec session".

> +
> +/ {
> +	chosen {
> +		linux,ima-kexec-buffer = <0x9 0x82000000 0x0 0x00008000>;
> +	};
> +};
> +
> +This porperty does not represent real hardware, but the memory allocated for
> +carrying the IMA measurement logs. The address and the suze are expressed in
> +#address-cells and #size-cells, respectively of the root node.


--
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
