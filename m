Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E011E20A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPYLL58sPocjxum4ikHGS2nfGSnPyGAx+XpqZE9zV98=; b=HXDSBqlMDMX4hA
	1HpO5IwhxANKuEX0ViOxfXeGZbSmA3jw+1hXxx2M81H+EFQNf5NrsauZpxJOMjyaTb/bodK4UZB7j
	aTjIiM5yGChkNlbhpbo2hI8hkl4lFckQeyApDjIxIp+qzIeo4kz/QRsgpU5cMQaAhJ9pLnUor2yNR
	GCSsp9Rn0L+u2jTpa7JJ81GLiihC4ki9yf/8N0dyVqeR/TCBNJhlszbBgnN12sZ3moeUEn7AyY0M/
	w+yoYyTR6AV8tIBXC/Uew/gBDQ8rkCD3MfcFItxiLIeCYqrp4/AyfpKrn5QRQ6TV3zhUv1rIqgndv
	CDE5LTHolTsxDSYL31Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXQq-0000a0-4s; Tue, 26 May 2020 11:07:40 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXOq-0007ug-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590491135;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Wxo/6JU4Ay6RfuSzG9nMM1AaC69gbyAXb63u8KjD7Xg=;
 b=XiAZi2TOZDZJmhIxi2K0DzmBtb0TxWtlVH28tlcD/A7o6qGwqihzmcz7SF4yyJ14YwwFnI
 Kw6dLnFrgx3dppVWkttUbhN15rmc+t58J8iCqEciH41jdSFzSV5CrPbngH0LtJIRblzsSm
 9NOVBsjlPy82agfwwH120fpSExQOdcM=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-209-YSQ8heAeMIWWib05IUM-eg-1; Tue, 26 May 2020 07:05:33 -0400
X-MC-Unique: YSQ8heAeMIWWib05IUM-eg-1
Received: by mail-wr1-f71.google.com with SMTP id 3so2672294wrs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:05:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wxo/6JU4Ay6RfuSzG9nMM1AaC69gbyAXb63u8KjD7Xg=;
 b=lEiiHkcPBdpxUD9pi1BCelY/itHYlJt54Nfy4BowK1pL5yMAvllsFqVRmcUI3XDX6j
 FEzJFliyzWvZlT6zrNKX2+jxL/h9JSrZqAZy3Uufjn0IGDejB37ouGUs0eICaXbYv9nn
 5/vu+WrN5GUOew5hJYmIkRN0eb+yyUubho/aSufpXtnIID6gqyfs4jljDf9r4vl0mHug
 EzU1Z0TXoLfxfA+/jwNSYz7xdlL/QUfcOL1iitwU5ThEPF5W0JQ3AkkdmPmfihsK2GAN
 PoGMUTLW/kiQ4F5KMQ4xCb72csKhczGK2Vh77dBXZRZ7AHqeXeWr1f0EjV6I/DuHXvg1
 PXeg==
X-Gm-Message-State: AOAM533IHgYyVhHgv4aBT9uUktg3AWoaXOaWn4xkEtUknVFVvVKsTYzo
 w6VtokT+/OBXq5D4K6SEP+kV5FEUOyY8m/1WUX/rKm5ZNPF6emd4IChCCNMEIbcivD4KrLozyk9
 n5J7Af+hUPj/LTRyX8xo7gdDjunZWAn4cVwM=
X-Received: by 2002:adf:a41a:: with SMTP id d26mr3564294wra.324.1590491132506; 
 Tue, 26 May 2020 04:05:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxtQPejIzuIOGlk59w68WJzfZKAuFRIeGqcFi7BVaubrvbOSzWLRRAG5Ol3GCpsl8mHBwP8Og==
X-Received: by 2002:adf:a41a:: with SMTP id d26mr3564265wra.324.1590491132283; 
 Tue, 26 May 2020 04:05:32 -0700 (PDT)
Received: from localhost.localdomain.com ([194.230.155.118])
 by smtp.gmail.com with ESMTPSA id d6sm22928240wrj.90.2020.05.26.04.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 04:05:23 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: kvm@vger.kernel.org
Subject: [PATCH v3 6/7] [not for merge] kvm: example of stats_fs_value show
 function
Date: Tue, 26 May 2020 13:03:16 +0200
Message-Id: <20200526110318.69006-7-eesposit@redhat.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200526110318.69006-1-eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_040541_110041_8BA58F2F 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Emanuele Giuseppe Esposito <eesposit@redhat.com>,
 linux-s390@vger.kernel.org, linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an example of the show function using the mp_state value.

mp_state is an enum that represents the VCPU state,
so instead of displaying its integer representation,
the show function takes care of translating the integer into a
more meaningful string representation.

The VCPU status is shown in the kvm/<vmid>/vcpu<cpuid>/mp_state file

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 arch/x86/kvm/stats_fs.c | 54 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/x86/kvm/stats_fs.c b/arch/x86/kvm/stats_fs.c
index f6edebb9c559..902be18562da 100644
--- a/arch/x86/kvm/stats_fs.c
+++ b/arch/x86/kvm/stats_fs.c
@@ -39,11 +39,65 @@ struct stats_fs_value stats_fs_vcpu_arch_tsc_frac[] = {
 	{ NULL } /* base is &kvm_tsc_scaling_ratio_frac_bits */
 };
 
+char *stats_fs_vcpu_get_mpstate(uint64_t state)
+{
+	char *state_str;
+
+	state_str = kzalloc(20, GFP_KERNEL);
+	if (!state_str)
+		return ERR_PTR(-ENOMEM);
+
+	switch (state) {
+	case KVM_MP_STATE_RUNNABLE:
+		strcpy(state_str, "RUNNABLE");
+		break;
+	case KVM_MP_STATE_UNINITIALIZED:
+		strcpy(state_str, "UNINITIALIZED");
+		break;
+	case KVM_MP_STATE_INIT_RECEIVED:
+		strcpy(state_str, "INIT_RECEIVED");
+		break;
+	case KVM_MP_STATE_HALTED:
+		strcpy(state_str, "HALTED");
+		break;
+	case KVM_MP_STATE_SIPI_RECEIVED:
+		strcpy(state_str, "SIPI_RECEIVED");
+		break;
+	case KVM_MP_STATE_STOPPED:
+		strcpy(state_str, "STOPPED");
+		break;
+	case KVM_MP_STATE_CHECK_STOP:
+		strcpy(state_str, "CHECK_STOP");
+		break;
+	case KVM_MP_STATE_OPERATING:
+		strcpy(state_str, "OPERATING");
+		break;
+	case KVM_MP_STATE_LOAD:
+		strcpy(state_str, "LOAD");
+		break;
+	default:
+		strcpy(state_str, "UNRECOGNIZED");
+		break;
+	}
+
+	return state_str;
+}
+
+struct stats_fs_value stats_fs_vcpu_mp_state[] = {
+	VCPU_ARCH_STATS_FS("mp_state", kvm_vcpu_arch, mp_state,
+			   .type = &stats_fs_type_u32,
+			   .show = stats_fs_vcpu_get_mpstate),
+	{ NULL }
+};
+
 void kvm_arch_create_vcpu_stats_fs(struct kvm_vcpu *vcpu)
 {
 	stats_fs_source_add_values(vcpu->stats_fs_src, stats_fs_vcpu_tsc_offset,
 				   &vcpu->arch, 0);
 
+	stats_fs_source_add_values(vcpu->stats_fs_src, stats_fs_vcpu_mp_state,
+				   &vcpu->arch, 0);
+
 	if (lapic_in_kernel(vcpu))
 		stats_fs_source_add_values(vcpu->stats_fs_src,
 					   stats_fs_vcpu_arch_lapic_timer,
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
