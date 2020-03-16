Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41521866E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6ednsMpDw95DfZZZ8/6iw1pN72fxdG5YQT5Bt/IWD4=; b=eGh6lXag6/Sjiq
	FDkwUuiIWAjq9oFjaUr9M+8Pmab0+pMtt03TI3/K9azZUnatL4aTJBaQz++OPxvtHHQeywPDazotW
	nZhUOLPTQBEH24mW42iCyhVkXmOEXAXv7+Kxno5pTcpGl4K8eC6KI225F6CpWHZA60plxbEZ5sDY1
	Z9WE3FafNdEFqHN1rWWaytSJqTmvnRdnnalRwfvqjVbFNcZeCE1T6D1bDPuJvn26h72W8VFBWZgSJ
	N46gGAT1/SOGRphydHthjv2RvikFSy61nL6sU2w9WzYQeWn0f1lwAkCbKzZ53QKVoDfsIi94SOPHi
	JqXoOrecQsVAr03dBYVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlQ9-0006e1-Ci; Mon, 16 Mar 2020 08:48:25 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlQ0-0006dQ-Sc
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:48:18 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mnq8Y-1jftNU0zeM-00pONc for <linux-arm-kernel@lists.infradead.org>; Mon,
 16 Mar 2020 09:48:14 +0100
Received: by mail-qk1-f175.google.com with SMTP id h14so24729172qke.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:48:14 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2+VYh52iVRCX4lWRprNzorPVkVhLVNLNqdAxhZP52aOzEcBu6L
 zpYOlZZ4X8IX84CbkGw7PZskXfZDXJ8J+/csjec=
X-Google-Smtp-Source: ADFU+vvOY/BGxo7kSvcD97t4Z1vQUfkOL22qs/tI6hULqTssDTO2tyghsLEAxf/j8ykiL2awuFtXPZNlBwPgv73H9fE=
X-Received: by 2002:a37:b984:: with SMTP id j126mr23783692qkf.3.1584348493133; 
 Mon, 16 Mar 2020 01:48:13 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-2-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1584200119-18594-2-git-send-email-mikelley@microsoft.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Mar 2020 09:47:57 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1GFDUY4mXzst4Ds+S-4SGXso6-jfpsYyy-eHyceAC1Zg@mail.gmail.com>
Message-ID: <CAK8P3a1GFDUY4mXzst4Ds+S-4SGXso6-jfpsYyy-eHyceAC1Zg@mail.gmail.com>
Subject: Re: [PATCH v6 01/10] arm64: hyperv: Add core Hyper-V include files
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:hWOXq5xlvpxAIsb2kXyLZ/U3JGfURweQ7EzzQbbJ3+CidiF1SZj
 gNvHSViSqSqWcg2XL0MQRfiOE5NvITl7ipJSsBN8ZE6uzEdkwNFHh44QWBI+nqzIGZNwAMx
 ZsEwXp8j8za18FOSaWz0aOXfjK8NVoB6eIg4Y+AQAubhrFeuXamyyHxz5zjtE2xrvBfliqa
 +AKcGH2oFexicJcAaCAzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K3FzP58SzoE=:ctCaV8/JGzoX+A9sYTg/p8
 cp940fdDcwMXRPpMaHAU8GVlba7fMYADMQ1dJeeZcoTxixdUu6gsf73gboNhKJJjeuNo6Ra5J
 +XcTGEHSpLObAeYBHbm5LVFnRhIGGU820ov/f3w2CRYgFE0KYhN46llforXy8FM+M0PzM7LdK
 nR03/ne9natWSpXI45ytlVjRkDpzr/WOoPNLOFpRGsmD22yMH1ztNDLAkZ/RRJt0cjNmsPiGt
 uAO1NXajNarAjcB2J+il/sAQ44ZKs0aKl0/+sQTmbC/8e/fjbAh2AUp8ddqCF7Z1C9jrJxtGx
 bBcNeFEODeme0DrAW8Hn7MMmHH95ZpACrNPnHgVi4i1QVf9SdTasTPrtJQc+10X2w5V9PqCkZ
 B/DdCRtJtlIjiz/BUKpXKrEpElQjoIqFX2g1c0cDWdrJx5raggN33zHTrLy4Zk6HfQFOUfWAm
 bO5JyMtfTq1hX7uge+M5mbHLTUca5hmEsZIJ8iw0/VwqzKVXVtcl90zh1n7TT+bElyQ+pE1BN
 VsmUpHLbLuUIYNdgG7/Z4pz9O+iWkRPX5VXTzDCgzUZbKlwfyTC1q/VU0MUVY2iCOVZZVjEkt
 PPL8xyfgffgTgNkUGatZdLhx5gmKE8GnYP8wQZmRoRR/cCou7QkX3rSqbF5XvTTSUZtjcUfyQ
 jZXMzeruBuBxESXNAmK3jsSpVrBAjiuQPp3vEqc2TfTN2LpaIOoeXUW8kSc+VCa+E46SoWKL/
 QuXYOjfbDlEPUAr3hNEnNbvbuluf11SHJv6KZEekSEyoMT8oSB+58CsGEWpekDdCTiFocnQ9b
 n9doa6OGbMGAlzHxb+x5Xf3w8Fxu0kpIBaZa17bAXxKKYLbYZI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_014817_221095_0460EFEB 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, sunilmut@microsoft.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 marcelo.cerri@canonical.com, olaf@aepfle.de, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:

> +
> +/* Define input and output layout for Get VP Register hypercall */
> +struct hv_get_vp_register_input {
> +       u64 partitionid;
> +       u32 vpindex;
> +       u8  inputvtl;
> +       u8  padding[3];
> +       u32 name0;
> +       u32 name1;
> +} __packed;

Are you sure these need to be made byte-aligned according to the
specification? If the structure itself is aligned to 64 bit, better mark only
the individual fields that are misaligned as __packed.

If the structure is aligned to only 32-bit addresses instead of
64-bit, mark it as "__packed __aligned(4)" to let the compiler
generate better code for accessing it.

Also, in order to write portable code, it would be helpful to mark
all the fields as explicitly little-endian, and use __le32_to_cpu()
etc for accessing them.

> +/* Define synthetic interrupt controller message flags. */
> +union hv_message_flags {
> +       __u8 asu8;
> +       struct {
> +               __u8 msg_pending:1;
> +               __u8 reserved:7;
> +       } __packed;
> +};

For similar reasons, please avoid bit fields and just use a
bit mask on the first member of the union.

The __packed annotation here is not meaningful,
as the total size is already only a single byte.

> +/* Define port identifier type. */
> +union hv_port_id {
> +       __u32 asu32;
> +       struct {
> +               __u32 id:24;
> +               __u32 reserved:8;
> +       }  __packed u;
> +};

Here, the __packed annotation is inconsistent with the use
in the rest of the file: marking only one member of the union
as __packed means that the union itself is still expected to
be 4 byte aligned. I would expect that either all of these
structures have a sensible alignment, or they are all
completely unaligned.

> + * Use the Hyper-V provided stimer0 as the timer that is made
> + * available to the architecture independent Hyper-V drivers.
> + */
> +#define hv_init_timer(timer, tick) \
> +               hv_set_vpreg(HV_REGISTER_STIMER0_COUNT + (2*timer), tick)
> +#define hv_init_timer_config(timer, val) \
> +               hv_set_vpreg(HV_REGISTER_STIMER0_CONFIG + (2*timer), val)
> +#define hv_get_current_tick(tick) \
> +               (tick = hv_get_vpreg(HV_REGISTER_TIME_REFCOUNT))

In general, we prefer inline functions over macros in header files.

> +#if IS_ENABLED(CONFIG_HYPERV)
> +#define hv_enable_stimer0_percpu_irq(irq)      enable_percpu_irq(irq, 0)
> +#define hv_disable_stimer0_percpu_irq(irq)     disable_percpu_irq(irq)
> +#endif

Should there be an #else definition here? It helps readability
to have the two versions (with and without hyperv support) close
together rather than in different files. If there is no other
definition, just drop the #if.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
