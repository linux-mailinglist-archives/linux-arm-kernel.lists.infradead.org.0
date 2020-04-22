Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199351B3B9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PH/Nd5xogoaUcr+Dbfg0z1cDVZalXclgMo8vm/7HRXY=; b=KgYiC76ySiluzC
	k2vq1C3Yvh1MAUCDkwFJlzCyIlAW6m+Fhk0tH035Gc8Njr/DXpN7IgDHuPuaEvxWj3W5eJ6Ns/+6l
	KFNC9yqC4Z8G0xw1B4wtGXGx94nvyDPJvF9bmOENNI15fOs1g5SP38mBl4wnlVLaeFIZ9mXJid7H9
	TEo7LvQZf6wKDbqwTpiOa1EeLYJOqeHswNeAmKfcGDIZn0KbYJ7mdxhJk5G1Naor/cWGUjMukUefW
	bVBtMBS5eWqA5C0co7bdD31exyiWMGEWNgIYZD5mBgFMwKaDPpAxdAiAQD9q4PItst7At05pu0XzW
	0AY2xzQZzPHwllYqSGGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBtZ-00044H-J4; Wed, 22 Apr 2020 09:42:17 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBtP-00042o-P4
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:42:09 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MK3a4-1jmism3f7G-00LXQx for <linux-arm-kernel@lists.infradead.org>; Wed,
 22 Apr 2020 11:42:03 +0200
Received: by mail-qt1-f178.google.com with SMTP id h26so846054qtu.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 02:42:02 -0700 (PDT)
X-Gm-Message-State: AGi0PuZfCRULUAHhGeBadalGWK/KL/YvdSMEXaejpbD65qwPe/gcGQNI
 h2fZPaDn0mxe0dCgUKKSnH2B4tcWg9nElyivXCI=
X-Google-Smtp-Source: APiQypLLKi9cLhzL0W2P5kqrtwWwlXVC0xXk3CH7HLud+3whDHwkik5qt+9WUyNmxGIdtuplja/aMpGLHcNc0ejrzo8=
X-Received: by 2002:ac8:4e2c:: with SMTP id d12mr25067709qtw.204.1587548521246; 
 Wed, 22 Apr 2020 02:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200331183844.30488-1-ulf.hansson@linaro.org>
 <20200331183844.30488-2-ulf.hansson@linaro.org>
In-Reply-To: <20200331183844.30488-2-ulf.hansson@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 22 Apr 2020 11:41:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0Nqvho82529dAi6oZhh0PgjiRfj=NLdNkkMfZ6Tw25iw@mail.gmail.com>
Message-ID: <CAK8P3a0Nqvho82529dAi6oZhh0PgjiRfj=NLdNkkMfZ6Tw25iw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] driver core: platform: Initialize dma_parms for
 platform devices
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Provags-ID: V03:K1:h4v6hyClAaDdMaCWS8ccojzqdpQ8jL2TJbv/PTswE7TiO8/eDgF
 pgmyp5QSFdOEzPYTTe9VbeofsroIXH9sMxkzfwcsCpNLiU4auLPbcS+NTBkBlwkgtYeLOWC
 XXUqP1oJXYp4+xv5pi4Zrk00Ko4ppPaPFyfbHDNPNgsARdDhqH8URjYyA9mQ7uyHbwlJ1FT
 zmZK15DytCCINN2vBPnqw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x5T7Xi4E3J0=:x/pCNiTPshimQN1G/58vVf
 D59i885Ldsdx576+ehCW5mK8o0YCdHg/A4NBQFgZh5lg6s5uA+MvKkJwy44muCMJhKaOqiNjA
 gMyeJ4f8FgC171MoC3JWAjB4Q8zbCfnFbwpNbUKKgsDg21pT6ZTi6L9w15MCgJJFqgadYJL1k
 9wpGZ0c/tFR6tMxKoGmmzf2yKlCyCaxPa/5+zN9c9QFcQ+s5pgY3lGS1flxmp5Odj+Vm29+Tc
 dldEhBCedf3Wf+a255VwTAWASRxsZZ0kOXwKA3PW9TwVDzcYV6al6d/diIdJC+754CLIBhgxw
 rBFnwJLXVy2J8U4NjGBkBWVuGaQlJbrOZbTw/WaaKT8RwqXXhjJFSkP/Gfsp0DwSFzpX0aUSE
 7bWCMMED2z9fW+AXc0NPewUuxTSVYI3JrX8C9hNeiXzqBXZKN9hWLZr0vNKcx7f8qK3NqYXnt
 czuSWiGQnDB+xy1+evqyICati48rAG4/FQvd2o4oVIejQCSBIN3xpFS6Gsodb5O+E3PBc28Kd
 x6rkpzoM9HYu8f8VkGCTFLEj/bIdCoFTUXeUsNRWmkADMtHNmplyN3sFi+/JefTMvWL2WEFXj
 9nlxLpTTRdDa0fbUygt8McHZ/7sE2zwhul7Xe/eAL1NV0UQKfGK6ncGyccPka/1Wep7tKUoMm
 vI8YvEyeAnWt5st8ePpWKpMH/9KQpUoxyrNQAZD6Q9XWXFXssaWt96cLiekH6zSwv3TD1nVHt
 Ndmq5IUZ3nyE1uxg+ybJ7/nvs0ipDwYeLTIYSV+BsEe6pucZfsK7yPOpevJn7s/B2eNEvPqQB
 pJ3kPXLYaYpSajQxo5MR9SOKvWWUnd+ikcNFDjf9mV2CFQEehQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_024208_107698_C379DF2E 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, dmaengine@vger.kernel.org,
 "# 3.4.x" <stable@vger.kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 8:38 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> It's currently the platform driver's responsibility to initialize the
> pointer, dma_parms, for its corresponding struct device. The benefit with
> this approach allows us to avoid the initialization and to not waste memory
> for the struct device_dma_parameters, as this can be decided on a case by
> case basis.
>
> However, it has turned out that this approach is not very practical.  Not
> only does it lead to open coding, but also to real errors. In principle
> callers of dma_set_max_seg_size() doesn't check the error code, but just
> assumes it succeeds.
>
> For these reasons, let's do the initialization from the common platform bus
> at the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().
>
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
