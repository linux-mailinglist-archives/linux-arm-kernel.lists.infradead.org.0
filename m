Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06B219F616
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWAdF2IBsojOyiA/hKINNQMrIpk8VbvVBoxtAFtw8Fw=; b=n/5eYWQiBywktj
	IQLqTDKk3rF1RVirmxNqyJEtlAJVFVSXflOa8ORrtoKWFcSC5HxIzHcl7hmnC6Mu1i3cPNokTYkxH
	nbsGhDVPS6dDLyPYY/dKu3EbVAerSEUvuhG5WZLjfsBE+DckRxYvD5nUQsACXBWrBAS8MXfkp3tGz
	6d6kK1nJqKDqA+nb0Ge9ISnffGDonBitBEtNCD36ksXAwjzJjych8V0uWFiweB58dg2mFY3Ahng63
	BuhqIdLVk2tm8rICcyZiDAVmg1SXRycOVPyt15bdtsqymxP6I5knJZpQyEoSlUdIsXgCqv75itgNj
	NGqArJORxBx0u61aeKqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRDQ-0005C7-PT; Mon, 06 Apr 2020 12:51:00 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRDJ-0005Ar-V4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:50:55 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MQNF3-1jhFMJ09PV-00MJ0a for <linux-arm-kernel@lists.infradead.org>; Mon,
 06 Apr 2020 14:50:50 +0200
Received: by mail-qk1-f173.google.com with SMTP id u4so15881605qkj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 05:50:49 -0700 (PDT)
X-Gm-Message-State: AGi0Pua7XGaorpdsMiZX0bXBDW7vsplsDeJhvQVxo7ZUarKml7jyNZNw
 8wAAR+z0SXCAibbmWmC3LHRj3E6fW9+yjTV56XU=
X-Google-Smtp-Source: APiQypICKUA2vrOK5Bc2jX1TRNULphU8psoKiSX0vN3LLQCWOU+hQ1MKp843zvn0fSuU8msATIvGOPavJwM6FiL0u+U=
X-Received: by 2002:a37:a52:: with SMTP id 79mr871336qkk.3.1586177448981; Mon,
 06 Apr 2020 05:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200406121233.109889-1-mst@redhat.com>
 <20200406121233.109889-3-mst@redhat.com>
In-Reply-To: <20200406121233.109889-3-mst@redhat.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 6 Apr 2020 14:50:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1nce31itwMKbmXoNZh-Y68m3GX_WwzNiaBuk280VFh-Q@mail.gmail.com>
Message-ID: <CAK8P3a1nce31itwMKbmXoNZh-Y68m3GX_WwzNiaBuk280VFh-Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] vhost: disable for OABI
To: "Michael S. Tsirkin" <mst@redhat.com>
X-Provags-ID: V03:K1:nvXzQmK+HECJjxTkJveursOjOJtQnJf8WyuTcGpHbSB11BXfYHa
 GGf/NfdKoVWAenaH+0FOu15WIG/lOKCtErUJUTnEFB5uA1Kz9s8MUprawkGZdZJRmfqKuyj
 aTP17CL02qOnnOfS8pOrfPr5vcwrDVG0pzm4MnDH28bweaCo1IgUN/NJpXsjk3aW6DYaQgj
 XeWULN1vlV222OzLdFY+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Nqr5eXZpFAQ=:tq2n/m9HsQrTMrQNv0RVn7
 5ay/wKRYQ/Cf+ntD0r1B3eltdEcIR+4+qBDUNyHuv+Ttj2hYo8mnxDiTt13h2EvOWzSuZK9Xj
 hUzS6uDWFEUjpfAqiafMxNiGlRm6Qv0T5zJ5c25OTI6auiTpIWa9SX/RLW3y5SE6Nxcov+GVU
 L6yPV9DQBTSpJ6gkNT6g/IdxvKo7iXIh+0YB3DK3vpQXm8xehI3YQOjdMaA7dSfmNKyKPjbUz
 WVgckXAruANhVMyDL3tpI94DwAy/+mOQEhK3XayBQ1tgHUTZEEsF2M56qUp62zP1t3iqmdFaA
 Avst31c7G5ssXkz/rdXgi7Pi22CWNPbKXaMQ2Lx390GTfI10c3CupRoUOYl/BxzXOyxGZYuQM
 nNClKwvjjWvee4KuBdVlKTksEfOrUjWCtCCFzq9tdbxp5lO2dWpvnK2rYQFTEytHUMicMEgYo
 aB34zDT6J4kmvdFcvN/rZv3gejQeMX+SwhTkk8unqNmoRIdEqy8+Ey7j6gvVNMCrjsgtUF6i/
 WbRD1Txs8nEsQPbAGjyrR5p64Ifxwoh0X7xCuB6ep4pJJXh9CFgdmr35Nuxxrgzo9O8WsA+hR
 1viRUo9W4W2XuBU7I8bYfMbHwh9fYIT298viZKFKe4+3uEOWjWyVFhMF0PxQyg7c4TG3zv4O9
 GcSdywxJd6GTB4O48APPPT0LO2iAAarB0aRRnLkj/lfDEr3vRM7JV7p2RAj3KdkDhs8xKo+WA
 wvZoBi2wC3kr867+daWfeUD+vaHRoSsCfLxNAr72vuwwqmsP6ni0KQvvatkLR5vawHl+ceal9
 UfKA7DDidvUQJQRdYs4zANv7hSes6LaDDhKr1C5/cgGzGABTHc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_055054_289307_184E2A33 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: Richard Earnshaw <Richard.Earnshaw@arm.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>, kvm list <kvm@vger.kernel.org>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Dutt <sudeep.dutt@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Networking <netdev@vger.kernel.org>,
 virtualization@lists.linux-foundation.org, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 2:12 PM Michael S. Tsirkin <mst@redhat.com> wrote:

>
> +config VHOST_DPN
> +       bool "VHOST dependencies"
> +       depends on !ARM || AEABI
> +       default y
> +       help
> +         Anything selecting VHOST or VHOST_RING must depend on VHOST_DPN.
> +         This excludes the deprecated ARM ABI since that forces a 4 byte
> +         alignment on all structs - incompatible with virtio spec requirements.
> +

This should not be a user-visible option, so just make this 'def_bool
!ARM || AEABI'

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
