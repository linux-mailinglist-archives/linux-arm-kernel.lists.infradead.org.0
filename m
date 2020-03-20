Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F1B18C7A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 07:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ryw9riZ7+YJZL9Yx8dGVNR6oWaq1QYSdLMHrv2mTItk=; b=p4baJ5h9iZ8FUCFfZ7HcxjF/Z
	ZId86Ev9UAJMA2HqwQVyJyst+0itYyQoY2i0JexZFi4o/PkB88NV1Fm4/BvdgM3I5KjcyA5msGOlU
	RuvufGX3yFeFJM9HEtHFcWekAdS6hRQvtLAApn9bip9/I1AmOs/Old5IdeYiB6v6jPNpkpomgvcwY
	/6716Hxvk2/KdAoL3LMvu8IB1m6to5CSLo5oaKqYW14SNjgQZLNC4LEcw1f6Al/Rb0OSyeWWh5Byw
	bNiivsNgmP5nyG/PhBKcJYCHRmP97T1vwY+JmcAdNN3qEBGoeSO+BV8782DUwm/GlIWOeqCotKVcj
	/+lyB2m0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBN3-0002f5-8V; Fri, 20 Mar 2020 06:43:05 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBMv-0002eU-TT; Fri, 20 Mar 2020 06:42:59 +0000
Received: by mail-il1-x142.google.com with SMTP id a6so4614875ilc.4;
 Thu, 19 Mar 2020 23:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=06zGBj/ssS7PvnHG1KI/b5iGxZdt6EvTjuawiNHIYq4=;
 b=vdqILdi3RNjmq0KpeuSIapBq2fVmztThPONxiwnjJcjko8rcMRz8SQMlpdUCMzwZ4w
 JR8qOfBgDzz5a8YrmPdkBZQfsC3M4OJYhOs14w8/BL7A3Ln/tpeHkHC74ji23ZB4QvEc
 OVG/h0fkQEeWh9RawyDPM0TYP7P0X3fvBhq67MWIHuV+G6PdRv6Ax2S5qv8yE+g0LAtJ
 YV8/jKOZ8w9zu00EwMa9M768bM7pTxy0W4oytC7o3Mc312jJHtUyh4pL3kJd1TkGA9Fn
 ApbPkzdhDkf8ajBO+19LlKfNuoQ6tMg3sNw7u7cpyS2A9i/Wd2UIfY/ALFmIYkk4k2Ka
 zJng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=06zGBj/ssS7PvnHG1KI/b5iGxZdt6EvTjuawiNHIYq4=;
 b=JBGhE6zSTQDv3Z3iK/WYn8Hdq+SJtSr9A9WcfVksy5DFtVVo/TYd5zZOP2aqFcxQcG
 ymia006Ntk42PeTY2fzWOsrK2USsduCumFnAFZdZ1ACKnTjrrmj4wSu/M2q3w2JMFpUl
 h9Ul5v11v3Ozgug1UoPs/DeSOa3XaX1CTnV5mxxkh750edBibLlb2xROabLmMco0oV2W
 lC1VeooiDedav8D2stDYoBr79BjDCYr9sJFOXy9VEVC1yXoAqoqc1V+nN0excCg265tX
 9GJ4oqI1P3fz8J0fwdBnJvA0dkFsfXz3isrV8vPCT62octYZI9RyCwDr9UZRxRaNdeml
 /yVg==
X-Gm-Message-State: ANhLgQ2uCKAQogxMsjqAd24Sxnb12NovC6PHisrDgmmHsRKI4wK53AKO
 tD2Wp3CMajQLWnxjHfLQRtBkobCxoFOhwlpCIro=
X-Google-Smtp-Source: ADFU+vstvv6BY/bMlQ65uNn29myG7Af6LLODAPzrr62gDuWVPyo+vryjRqUrwyygLTJdrUYAmZ/8qDhhoqmRqbBluPg=
X-Received: by 2002:a92:d843:: with SMTP id h3mr6469852ilq.246.1584686575330; 
 Thu, 19 Mar 2020 23:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200302125310.742-1-linux.amoon@gmail.com>
 <20200302125310.742-3-linux.amoon@gmail.com>
 <7hlfoir8rj.fsf@baylibre.com>
 <CAFBinCB2WXZNRg4wdFD0RJ5k4hHqcfAOCHemvHzZE42-Mo5vzA@mail.gmail.com>
In-Reply-To: <CAFBinCB2WXZNRg4wdFD0RJ5k4hHqcfAOCHemvHzZE42-Mo5vzA@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 20 Mar 2020 12:12:43 +0530
Message-ID: <CANAwSgSefoxPqDcFG5jhW2iGbwUDkZ0bo4ebo63oKA73KKdn_w@mail.gmail.com>
Subject: Re: [PATCHv2 2/2] clk: meson: g12a: set cpub_clk flags to
 CLK_IS_CRITICAL
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Content-Type: multipart/mixed; boundary="00000000000067518905a14398c7"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_234257_980664_AA55BB73 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--00000000000067518905a14398c7
Content-Type: text/plain; charset="UTF-8"

Hi Martin / Kevin,

On Fri, 20 Mar 2020 at 05:09, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Kevin,
>
> On Mon, Mar 2, 2020 at 6:01 PM Kevin Hilman <khilman@baylibre.com> wrote:
> [...]
> > > updating flags to CLK_IS_CRITICAL which help enable all the parent for
> > > cpub_clk.
> >
> > With current mainline, I've tested DVFS using CPUfreq on both clusters
> > on odroid-n2, and both clusters are booting, so I don't understand the
> > need for this patch.
> I *think* there is a race condition at kernel boot between cpufreq and
> disabling orphaned clocks
> I'm not sure I fully understand it though and I don't have any G12B
> board to verify it
>
> my understanding is that u-boot runs Linux off CPU0 which is clocked by cpub_clk
> this means we need to keep cpub_clk enabled as long as Linux wants the
> CPU0 processor to be enabled (on 32-bit ARM platforms that would be
> smp_operations.cpu_{kill,die})
> cpufreq does not call clk_prepare_enable on the CPU clocks so this
> means that the orphaned clock cleanup mechanism can disable it "at any
> time", killing everything running on CPU0 and CPU1 (which are both
> clocked by cpub_clk)
>
> I have no explanation why this depends on booting from SD or eMMC.
>
> for the 32-bit SoCs we have CLK_IS_CRITICAL on the CPU clock as well
> since commit 0dad1ec65bc30a
> on G12A we have CLK_IS_CRITICAL on the sys_pll clocks, however my
> understanding is that cpub_clk could also be fed by one of the
> fixed_pll derived clocks (which have a gate as well, which may or may
> not be turned off by the orphaned clock cleanup - that is pure
> speculation from my side though).
>
>
> Martin

Thanks for this new input I will carefully check these details once again.

I am attaching small scripts on how I build the image with mainline
u-boot and mainline kernel.
So I am able to reproduce this issue on SD card.
Hoping some body could reproduce this issue at their end and share the feedback.
If their is some issue from my side please let me know.

-Anand

--00000000000067518905a14398c7
Content-Type: text/plain; charset="US-ASCII"; name="build_odroidn2.txt"
Content-Disposition: attachment; filename="build_odroidn2.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k7zscmr70>
X-Attachment-Id: f_k7zscmr70

LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KU3RlcCAxIDogU2NyaXB0IHRvIGJ1aWxkIHRo
ZSBwcmVwYXJlIHRoZSBpbWFnZS4NCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIyEvYmlu
L2Jhc2ggK3gNCg0Kd2dldCBodHRwOi8vb3MuYXJjaGxpbnV4YXJtLm9yZy9vcy9BcmNoTGludXhB
Uk0tYWFyY2g2NC1sYXRlc3QudGFyLmd6DQoNCkZJTEU9L2Rldi9tbWNibGswcDENCmlmIFsgLWIg
IiRGSUxFIiBdOyB0aGVuDQogICAgICAgIGV4cG9ydCBESVNLPS9kZXYvbW1jYmxrMA0KICAgICAg
ICBzdWRvIHN1ZG8gd2lwZWZzIC1hICR7RElTS31wMQ0KICAgICAgICBzdWRvIGRkIGlmPS9kZXYv
emVybyBvZj0ke0RJU0t9IGJzPTFNIGNvdW50PTUxMg0KDQogICAgICAgIHN1ZG8gc2ZkaXNrICR7
RElTS30gPDwtX19FT0ZfXw0KICAgICAgICAxNk0sLEwsKg0KICAgICAgICBfX0VPRl9fDQoNCiAg
ICAgICAgc3VkbyBta2ZzLmV4dDQgJHtESVNLfXAxDQogICAgICAgIHN5bmMNCg0KICAgICAgICBz
dWRvIG1vdW50ICR7RElTS31wMSByb290DQogICAgICAgIHN5bmMNCiAgICAgICAgc3VkbyBic2R0
YXIgLXhwZiBBcmNoTGludXhBUk0tYWFyY2g2NC1sYXRlc3QudGFyLmd6IC1DIHJvb3QNCiAgICAg
ICAgc3luYw0KDQogICAgICAgICMgY3JlYXRlIGN1c3RvbSBib290LnNjcg0KICAgICAgICBta2lt
YWdlIC1BIGFybSAtTyBsaW51eCAtVCBzY3JpcHQgLUMgbm9uZSAtbiAiQXJjaCBVLUJvb3QgYm9v
dCBzY3JpcHQgT2Ryb2lkIE4yIiAtZCBib290LW9kcm9pZG4yLnR4dCBib290LnNjcg0KICAgICAg
ICBzdWRvIGNwIC12IGJvb3Quc2NyICAgICByb290L2Jvb3QvDQogICAgICAgIHN5bmMNCiAgICAg
ICAgc3VkbyB1bW91bnQgcm9vdA0KZWxzZQ0KICAgICAgICBlY2hvICIkRklMRSBkb2VzIG5vdCBl
eGlzdCINCmZpDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCm15IGJvb3Qtb2Ryb2lkbjIudHh0
IGNvbnZlcnRlZCB0byBib290LnNjcg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIyBBZnRlciBt
b2RpZnlpbmcsIHJ1biAuL21rc2NyDQoNCnRlc3QgLW4gIiR7ZGlzdHJvX2Jvb3RwYXJ0fSIgfHwg
c2V0ZW52IGRpc3Ryb19ib290cGFydCAxDQpwYXJ0IHV1aWQgJHtkZXZ0eXBlfSAke2Rldm51bX06
JHtkaXN0cm9fYm9vdHBhcnR9IHV1aWQNCnNldGVudiBib290YXJncyAiY29uc29sZT10dHlBTUww
LDExNTIwMG44IHJvb3Q9UEFSVFVVSUQ9JHt1dWlkfSBydyByb290d2FpdCBlYXJseWNvbiBub19j
b25zb2xlX3N1c3BlbmQiDQoNCmlmIGxvYWQgJHtkZXZ0eXBlfSAke2Rldm51bX06JHtkaXN0cm9f
Ym9vdHBhcnR9ICR7a2VybmVsX2FkZHJfcn0gL2Jvb3QvSW1hZ2U7IHRoZW4NCiAgaWYgbG9hZCAk
e2RldnR5cGV9ICR7ZGV2bnVtfToke2Rpc3Ryb19ib290cGFydH0gJHtmZHRfYWRkcl9yfSAvYm9v
dC9kdGJzLyR7ZmR0ZmlsZX07IHRoZW4NCiAgICBpZiBsb2FkICR7ZGV2dHlwZX0gJHtkZXZudW19
OiR7ZGlzdHJvX2Jvb3RwYXJ0fSAke3JhbWRpc2tfYWRkcl9yfSAvYm9vdC9pbml0cmFtZnMtbGlu
dXguaW1nOyB0aGVuDQogICAgICBib290aSAke2tlcm5lbF9hZGRyX3J9ICR7cmFtZGlza19hZGRy
X3J9OiR7ZmlsZXNpemV9ICR7ZmR0X2FkZHJfcn07DQogICAgZWxzZQ0KICAgICAgYm9vdGkgJHtr
ZXJuZWxfYWRkcl9yfSAtICR7ZmR0X2FkZHJfcn07DQogICAgZmk7DQogIGZpOw0KZmkNCg0KLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpTdGVwIDI6IEJ1aWxkIGFuZCBmbGFzaCB0aGUgbWFpbmxp
bmUgdS1ib290IHRvIHRoZSBzZGNhcmQgLyBlTU1DLg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQojIS9iaW4vYmFzaA0Kc2V0ICt4DQoNCiMgVS1Cb290IGZvciBPRFJPSUQtTjINCnJtIHUtYm9v
dC1uMi9maXAvdS1ib290LmJpbi5zZC5iaW4NCg0KZ2l0IGNsb25lIGh0dHBzOi8vZ2l0bGFiLmRl
bnguZGUvdS1ib290L3UtYm9vdC5naXQgdS1ib290LW4yDQpjZCB1LWJvb3QtbjINCg0KIyB1LWJv
b3QgY29tcGlsYXRpb24NCiMgPT09PT09PT09PT09PT09PT09DQoNCmdpdCBwdWxsIG9yaWdpbiBt
YXN0ZXINCmV4cG9ydCBBUkNIPWFybTY0DQpleHBvcnQgQ1JPU1NfQ09NUElMRT1hYXJjaDY0LWxp
bnV4LWdudS0NCm1ha2UgZGlzdGNsZWFuDQptYWtlIG9kcm9pZC1uMl9kZWZjb25maWcgYWxsDQoN
CiMgPT09PT09PT09PT09PT0NCmNkIC4uDQp3Z2V0IGh0dHBzOi8vcmVsZWFzZXMubGluYXJvLm9y
Zy9hcmNoaXZlLzEzLjExL2NvbXBvbmVudHMvdG9vbGNoYWluL2JpbmFyaWVzL2djYy1saW5hcm8t
YWFyY2g2NC1ub25lLWVsZi00LjgtMjAxMy4xMV9saW51eC50YXIueHoNCndnZXQgaHR0cHM6Ly9y
ZWxlYXNlcy5saW5hcm8ub3JnL2FyY2hpdmUvMTMuMTEvY29tcG9uZW50cy90b29sY2hhaW4vYmlu
YXJpZXMvZ2NjLWxpbmFyby1hcm0tbm9uZS1lYWJpLTQuOC0yMDEzLjExX2xpbnV4LnRhci54eg0K
dGFyIHh2ZkogZ2NjLWxpbmFyby1hYXJjaDY0LW5vbmUtZWxmLTQuOC0yMDEzLjExX2xpbnV4LnRh
ci54eg0KdGFyIHh2ZkogZ2NjLWxpbmFyby1hcm0tbm9uZS1lYWJpLTQuOC0yMDEzLjExX2xpbnV4
LnRhci54eg0KZXhwb3J0IFBBVEg9JFBXRC9nY2MtbGluYXJvLWFhcmNoNjQtbm9uZS1lbGYtNC44
LTIwMTMuMTFfbGludXgvYmluOiRQV0QvZ2NjLWxpbmFyby1hcm0tbm9uZS1lYWJpLTQuOC0yMDEz
LjExX2xpbnV4L2JpbjokUEFUSA0KDQpESVI9b2Ryb2lkLW4yDQpnaXQgY2xvbmUgLS1kZXB0aCAx
IFwNCiAgICBodHRwczovL2dpdGh1Yi5jb20vaGFyZGtlcm5lbC91LWJvb3QuZ2l0IC1iIG9kcm9p
ZG4yLXYyMDE1LjAxIFwNCiAgICAkRElSDQoNCmNkIG9kcm9pZC1uMg0KZ2l0IHB1bGwgb3JpZ2lu
IG1hc3Rlcg0KbWFrZSBkaXN0Y2xlYW4NCm1ha2Ugb2Ryb2lkbjJfZGVmY29uZmlnDQptYWtlDQpl
eHBvcnQgVUJPT1RESVI9JFBXRA0KDQojIEdvIGJhY2sgdG8gbWFpbmxpbmUgVS1Cb290IHNvdXJj
ZSB0cmVlIHRoZW4gOg0KY2QgLi4vdS1ib290LW4yDQpta2RpciBmaXANCg0Kd2dldCBodHRwczov
L2dpdGh1Yi5jb20vQmF5TGlicmUvdS1ib290L3JlbGVhc2VzL2Rvd25sb2FkL3YyMDE3LjExLWxp
YnJldGVjaC1jYy9ibHhfZml4X2cxMmEuc2ggLU8gZmlwL2JseF9maXguc2gNCmNwIC12ICRVQk9P
VERJUi9idWlsZC9zY3BfdGFzay9ibDMwMS5iaW4gZmlwLw0KY3AgLXYgJFVCT09URElSL2J1aWxk
L2JvYXJkL2hhcmRrZXJuZWwvb2Ryb2lkbjIvZmlybXdhcmUvYWNzLmJpbiBmaXAvDQpjcCAtdiAk
VUJPT1RESVIvZmlwL2cxMmIvYmwyLmJpbiBmaXAvDQpjcCAtdiAkVUJPT1RESVIvZmlwL2cxMmIv
YmwzMC5iaW4gZmlwLw0KY3AgLXYgJFVCT09URElSL2ZpcC9nMTJiL2JsMzEuaW1nIGZpcC8NCmNw
IC12ICRVQk9PVERJUi9maXAvZzEyYi9kZHIzXzFkLmZ3IGZpcC8NCmNwIC12ICRVQk9PVERJUi9m
aXAvZzEyYi9kZHI0XzFkLmZ3IGZpcC8NCmNwIC12ICRVQk9PVERJUi9maXAvZzEyYi9kZHI0XzJk
LmZ3IGZpcC8NCmNwIC12ICRVQk9PVERJUi9maXAvZzEyYi9kaWFnX2xwZGRyNC5mdyBmaXAvDQpj
cCAtdiAkVUJPT1RESVIvZmlwL2cxMmIvbHBkZHI0XzFkLmZ3IGZpcC8NCmNwIC12ICRVQk9PVERJ
Ui9maXAvZzEyYi9scGRkcjRfMmQuZncgZmlwLw0KY3AgLXYgJFVCT09URElSL2ZpcC9nMTJiL3Bp
ZWkuZncgZmlwLw0KY3AgLXYgJFVCT09URElSL2ZpcC9nMTJiL2FtbF9kZHIuZncgZmlwLw0KY3Ag
LXYgdS1ib290LmJpbiBmaXAvYmwzMy5iaW4NCg0KYmFzaCBmaXAvYmx4X2ZpeC5zaCBcDQogICAg
IGZpcC9ibDMwLmJpbiBcDQogICAgIGZpcC96ZXJvX3RtcCBcDQogICAgIGZpcC9ibDMwX3plcm8u
YmluIFwNCiAgICAgZmlwL2JsMzAxLmJpbiBcDQogICAgIGZpcC9ibDMwMV96ZXJvLmJpbiBcDQog
ICAgIGZpcC9ibDMwX25ldy5iaW4gXA0KICAgICBibDMwDQoNCmJhc2ggZmlwL2JseF9maXguc2gg
XA0KICAgICBmaXAvYmwyLmJpbiBcDQogICAgIGZpcC96ZXJvX3RtcCBcDQogICAgIGZpcC9ibDJf
emVyby5iaW4gXA0KICAgICBmaXAvYWNzLmJpbiBcDQogICAgIGZpcC9ibDIxX3plcm8uYmluIFwN
CiAgICAgZmlwL2JsMl9uZXcuYmluIFwNCiAgICAgYmwyDQoNCiRVQk9PVERJUi9maXAvZzEyYi9h
bWxfZW5jcnlwdF9nMTJiIC0tYmwzMHNpZyAtLWlucHV0IGZpcC9ibDMwX25ldy5iaW4gXA0KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLW91dHB1dCBmaXAvYmwzMF9uZXcuYmluLmcx
MmEuZW5jIFwNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS1sZXZlbCB2Mw0KJFVC
T09URElSL2ZpcC9nMTJiL2FtbF9lbmNyeXB0X2cxMmIgLS1ibDNzaWcgLS1pbnB1dCBmaXAvYmwz
MF9uZXcuYmluLmcxMmEuZW5jIFwNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS1v
dXRwdXQgZmlwL2JsMzBfbmV3LmJpbi5lbmMgXA0KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAtLWxldmVsIHYzIC0tdHlwZSBibDMwDQokVUJPT1RESVIvZmlwL2cxMmIvYW1sX2VuY3J5
cHRfZzEyYiAtLWJsM3NpZyAtLWlucHV0IGZpcC9ibDMxLmltZyBcDQogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC0tb3V0cHV0IGZpcC9ibDMxLmltZy5lbmMgXA0KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAtLWxldmVsIHYzIC0tdHlwZSBibDMxDQokVUJPT1RESVIvZmlw
L2cxMmIvYW1sX2VuY3J5cHRfZzEyYiAtLWJsM3NpZyAtLWlucHV0IGZpcC9ibDMzLmJpbiAtLWNv
bXByZXNzIGx6NCBcDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tb3V0cHV0IGZp
cC9ibDMzLmJpbi5lbmMgXA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLWxldmVs
IHYzIC0tdHlwZSBibDMzIC0tY29tcHJlc3MgbHo0DQokVUJPT1RESVIvZmlwL2cxMmIvYW1sX2Vu
Y3J5cHRfZzEyYiAtLWJsMnNpZyAtLWlucHV0IGZpcC9ibDJfbmV3LmJpbiBcDQogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC0tb3V0cHV0IGZpcC9ibDIubi5iaW4uc2lnDQokVUJPT1RE
SVIvZmlwL2cxMmIvYW1sX2VuY3J5cHRfZzEyYiAtLWJvb3RtayBcDQogICAgICAgIC0tb3V0cHV0
IGZpcC91LWJvb3QuYmluIFwNCiAgICAgICAgLS1ibDIgZmlwL2JsMi5uLmJpbi5zaWcgXA0KICAg
ICAgICAtLWJsMzAgZmlwL2JsMzBfbmV3LmJpbi5lbmMgXA0KICAgICAgICAtLWJsMzEgZmlwL2Js
MzEuaW1nLmVuYyBcDQogICAgICAgIC0tYmwzMyBmaXAvYmwzMy5iaW4uZW5jIFwNCiAgICAgICAg
LS1kZHJmdzEgZmlwL2RkcjRfMWQuZncgXA0KICAgICAgICAtLWRkcmZ3MiBmaXAvZGRyNF8yZC5m
dyBcDQogICAgICAgIC0tZGRyZnczIGZpcC9kZHIzXzFkLmZ3IFwNCiAgICAgICAgLS1kZHJmdzQg
ZmlwL3BpZWkuZncgXA0KICAgICAgICAtLWRkcmZ3NSBmaXAvbHBkZHI0XzFkLmZ3IFwNCiAgICAg
ICAgLS1kZHJmdzYgZmlwL2xwZGRyNF8yZC5mdyBcDQogICAgICAgIC0tZGRyZnc3IGZpcC9kaWFn
X2xwZGRyNC5mdyBcDQogICAgICAgIC0tZGRyZnc4IGZpcC9hbWxfZGRyLmZ3IFwNCiAgICAgICAg
LS1sZXZlbCB2Mw0KDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpTdGVw
IDM6IEZsYXNoIHRoZSB1LWJvb3QgaW1hZ2UNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQpGSUxFPS9kZXYvbW1jYmxrMA0KaWYgWyAtYiAiJEZJTEUiIF07IHRoZW4NCiAgICAg
ICAgREVWPS9kZXYvbW1jYmxrMA0KICAgICAgICBzdWRvIGRkIGlmPWZpcC91LWJvb3QuYmluLnNk
LmJpbiBvZj0kREVWIGNvbnY9ZnN5bmMsbm90cnVuYyBicz01MTIgc2tpcD0xIHNlZWs9MQ0KICAg
ICAgICBzdWRvIGRkIGlmPWZpcC91LWJvb3QuYmluLnNkLmJpbiBvZj0kREVWIGNvbnY9ZnN5bmMs
bm90cnVuYyBicz0xIGNvdW50PTQ0NA0KZWxzZQ0KICAgICAgIGVjaG8gIiRGSUxFIGRvZXMgbm90
IGV4aXN0Ig0KZmkNCg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpXaXRoIHRo
aXMgc3RlcCB5b3Ugd2lsbCBoYXZlIHdvcmtpbmcgYnVpbGQgaW1hZ2UgdG8gYm9vdCB0aGUga2Vy
bmVsLg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpTdGVwIDQ6IEZvciBjbG9zcyBjb21waWxlIGFuZCBi
dWlsZCB0aGUga2VybmVsDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
DQpleHBvcnQgR0NDX0NPTE9SUz1hdXRvDQoNCm1ha2UgQVJDSD1hcm02NCBtcnByb3Blcg0KbWFr
ZSBBUkNIPWFybTY0IENST1NTX0NPTVBJTEU9YWFyY2g2NC1saW51eC1nbnUtIGRlZmNvbmZpZw0K
bWFrZSBBUkNIPWFybTY0IENST1NTX0NPTVBJTEU9YWFyY2g2NC1saW51eC1nbnUtIC1qJChucHJv
YykgZHRicyBJbWFnZSBtb2R1bGVzDQoNCm1rZGlyIC1wIG1lZGlhDQpzdWRvIG1vdW50IC9kZXYv
bW1jYmxrMHAxIC4vbWVkaWENCnN1ZG8gY3AgLXYgYXJjaC9hcm02NC9ib290L0ltYWdlIC4vbWVk
aWEvYm9vdC8NCnN1ZG8gY3AgLXYgYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWd4
YmItb2Ryb2lkYzIuZHRiIC4vbWVkaWEvYm9vdC9kdGJzL2FtbG9naWMvbWVzb24tZ3hiYi1vZHJv
aWRjMi5kdGINCnN1ZG8gY3AgLXYgYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWcx
MmItb2Ryb2lkLW4yLmR0YiAuL21lZGlhL2Jvb3QvZHRicy9hbWxvZ2ljL21lc29uLWcxMmItb2Ry
b2lkLW4yLmR0Yg0Kc3VkbyBtYWtlIEFSQ0g9YXJtNjQgTE9DQUxWRVJTSU9OPS14bWx0IG1vZHVs
ZXNfaW5zdGFsbCBJTlNUQUxMX01PRF9QQVRIPS4vbWVkaWEgJiYgc3luYyAmJiBzdWRvIHVtb3Vu
dCAuL21lZGlhICYmIHN1ZG8gcm0gLXJmIC4vbWVkaWENCg==
--00000000000067518905a14398c7
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--00000000000067518905a14398c7--

