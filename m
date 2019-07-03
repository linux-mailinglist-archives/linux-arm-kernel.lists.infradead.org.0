Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDDB5E36A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUI6q+eFqwyuxXr5S3v7AdfOc7BAP1ZlumK+G3Y0hUw=; b=lnITkuOwueZE95
	7FRd1DwgFF5cMxxCdXjsVtx1M3vnOFOUKtkySXXmlKNDg+DZos947naAwLxchCfJqUBDxhI6G1aYn
	/PS3zM4vjEQvy30tCnWCu0Lg2wySMBla3iBmvPsZTRfBHftQ2ZSuaCwZcn2fLktwZDifUroX2JG6M
	dsjlyzBG4QeoZzvzdcYg1Rtqhi8eAwbSkitOSfKRq997tOnbAPVnhXziHfzg6X0PFT8BGPXlmi9Dh
	71Cwi8DKpobmuss/3Psqg6OpOYtXKiZ2GArdxDet5AZ7zyliYsl+BQ3O2BziZczRKbUN7Jqt6DcWR
	Q6TcEXVcVWftJnKM1a4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hie0l-0003rr-RU; Wed, 03 Jul 2019 12:05:19 +0000
Received: from mgwym02.jp.fujitsu.com ([211.128.242.41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hie0Z-0002wb-6i
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:05:09 +0000
Received: from yt-mxoi1.gw.nic.fujitsu.com (unknown [192.168.229.67]) by
 mgwym02.jp.fujitsu.com with smtp
 id 0bac_0463_bccd1d7d_ea08_4370_9386_4f3eda07e855;
 Wed, 03 Jul 2019 21:05:01 +0900
Received: from g01jpfmpwkw03.exch.g01.fujitsu.local
 (g01jpfmpwkw03.exch.g01.fujitsu.local [10.0.193.57])
 by yt-mxoi1.gw.nic.fujitsu.com (Postfix) with ESMTP id C51DEAC01CF
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jul 2019 21:05:00 +0900 (JST)
Received: from G01JPEXCHKW16.g01.fujitsu.local
 (G01JPEXCHKW16.g01.fujitsu.local [10.0.194.55])
 by g01jpfmpwkw03.exch.g01.fujitsu.local (Postfix) with ESMTP id 6AB37BD67CF;
 Wed,  3 Jul 2019 21:04:12 +0900 (JST)
Received: from G01JPEXMBKW03.g01.fujitsu.local ([10.0.194.67]) by
 g01jpexchkw16 ([10.0.194.55]) with mapi id 14.03.0439.000; Wed, 3 Jul 2019
 21:04:12 +0900
From: "Zhang, Lei" <zhang.lei@jp.fujitsu.com>
To: 'Viresh Kumar' <viresh.kumar@linaro.org>, Marc Zyngier
 <marc.zyngier@arm.com>, James Morse <james.morse@arm.com>, Julien Thierry
 <julien.thierry@arm.com>, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 "Catalin Marinas" <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>
Subject: RE: [PATCH V3] KVM: arm64: Implement vq_present() as a macro
Thread-Topic: [PATCH V3] KVM: arm64: Implement vq_present() as a macro
Thread-Index: AQHVH3NpPwUf8hPIpUWmAfH1HAJm36a47W0A
Date: Wed, 3 Jul 2019 12:04:11 +0000
Message-ID: <8898674D84E3B24BA3A2D289B872026A78BA95D6@G01JPEXMBKW03>
References: <be823e68faffc82a6f621c16ce1bd45990d92791.1560160681.git.viresh.kumar@linaro.org>
In-Reply-To: <be823e68faffc82a6f621c16ce1bd45990d92791.1560160681.git.viresh.kumar@linaro.org>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.70.226]
MIME-Version: 1.0
X-SecurityPolicyCheck-GC: OK by FENCE-Mail
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_050507_637409_1FA5B419 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [211.128.242.41 listed in list.dnswl.org]
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
Cc: "Okamoto, Takayuki" <tokamoto@jp.fujitsu.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>, "Mizuma,
 Masayoshi" <masayoshi.mizuma@fujitsu.com>, "Zhang,
 Lei" <zhang.lei@jp.fujitsu.com>, Dave Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Indoh, Takao" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

I can't start up KVM guest os with SVE feature with your patch.
The error message is 
qemu-system-aarch64: kvm_init_vcpu failed: Invalid argument.

My test enviroment.
kernel  linux-5.2-rc6
qemu  [Qemu-devel] [PATCH v2 00/14] target/arm/kvm: enable SVE in guests https://lists.gnu.org/archive/html/qemu-devel/2019-06/msg04945.html
KVM start up option
-machine virt,gic-version=host,accel=kvm \
-cpu host \
-machine type=virt \
-nographic \
-smp 16 \ -m 4096 \
-drive if=none,file=/root/image.qcow2,id=hd0,format=qcow2 \
-device virtio-blk-device,drive=hd0 \
-netdev user,id=mynet0,restrict=off,hostfwd=tcp::38001-:22 \
-device virtio-net-device,netdev=mynet0 \
-bios /root/QEMU_EFI.fd

sve_vq_available function's return value' type is bool.
But vq_present is macro, so the value is not only TRUE, FALSE but also some numbers.
So It failed at 
if (vq_present(vqs, vq) != sve_vq_available(vq)).
I think it is nessary to make vq_present macro's value only TRUE and FALSE.

arch/arm64/kvm/guest.c
static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
	for (vq = SVE_VQ_MIN; vq <= max_vq; ++vq)
		if (vq_present(vqs, vq) != sve_vq_available(vq))　// It failed at here.
			return -EINVAL;

My patch as follows.
I have started up KVM guest os successfully with SVE feature with this patch.

Could you review and merge my patch?



Signed-off-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
---
 arch/arm64/kvm/guest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c index c2afa79..dfd6264 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -208,7 +208,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)

 #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)  #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64) -#define vq_present(vqs, vq) ((vqs)[vq_word(vq)] & vq_mask(vq))
+#define vq_present(vqs, vq) (!!((vqs)[vq_word(vq)] & vq_mask(vq)))

 static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)  {
--
1.8.3.1

> -----Original Message-----
> From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org> On
> Behalf Of Viresh Kumar
> Sent: Monday, June 10, 2019 7:00 PM
> To: Marc Zyngier <marc.zyngier@arm.com>; James Morse
> <james.morse@arm.com>; Julien Thierry <julien.thierry@arm.com>; Suzuki K
> Pouloze <suzuki.poulose@arm.com>; Catalin Marinas
> <catalin.marinas@arm.com>; Will Deacon <will.deacon@arm.com>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>; linux-kernel@vger.kernel.org;
> kvmarm@lists.cs.columbia.edu; Dave Martin <Dave.Martin@arm.com>;
> linux-arm-kernel@lists.infradead.org
> Subject: [PATCH V3] KVM: arm64: Implement vq_present() as a macro
> 
> This routine is a one-liner and doesn't really need to be function and can be
> implemented as a macro.
> 
> Suggested-by: Dave Martin <Dave.Martin@arm.com>
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
> V2->V3:
> - Pass "vqs" instead of "&vqs" to vq_present().
> - Added Reviewed-by from Dave.
> 
> V1->V2:
> - The previous implementation was fixing a compilation error that
>   occurred only with old compilers (from 2015) due to a bug in the
>   compiler itself.
> 
> - Dave suggested to rather implement this as a macro which made more
>   sense.
> 
>  arch/arm64/kvm/guest.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c index
> 3ae2f82fca46..ae734fcfd4ea 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -207,13 +207,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const
> struct kvm_one_reg *reg)
> 
>  #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)  #define vq_mask(vq)
> ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
> -
> -static bool vq_present(
> -	const u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
> -	unsigned int vq)
> -{
> -	return (*vqs)[vq_word(vq)] & vq_mask(vq);
> -}
> +#define vq_present(vqs, vq) ((vqs)[vq_word(vq)] & vq_mask(vq))
> 
>  static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
> { @@ -258,7 +252,7 @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const
> struct kvm_one_reg *reg)
> 
>  	max_vq = 0;
>  	for (vq = SVE_VQ_MIN; vq <= SVE_VQ_MAX; ++vq)
> -		if (vq_present(&vqs, vq))
> +		if (vq_present(vqs, vq))
>  			max_vq = vq;
> 
>  	if (max_vq > sve_vq_from_vl(kvm_sve_max_vl)) @@ -272,7 +266,7
> @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg
> *reg)
>  	 * maximum:
>  	 */
>  	for (vq = SVE_VQ_MIN; vq <= max_vq; ++vq)
> -		if (vq_present(&vqs, vq) != sve_vq_available(vq))
> +		if (vq_present(vqs, vq) != sve_vq_available(vq))
>  			return -EINVAL;
> 
>  	/* Can't run with no vector lengths at all: */
> --
> 2.21.0.rc0.269.g1a574e7a288b
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
