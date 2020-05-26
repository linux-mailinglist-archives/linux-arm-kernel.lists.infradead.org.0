Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C6D1E1E48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 11:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSVwWhXLxF+g+jIv7BichStULHjBlvo16O+p35bfRI8=; b=clNGMK4A4uAtkb
	CTYBDSy6uVRTzlv2OzRwkKLfEIM5yLZlD9Px4NjCtnPFtirmhroDJxiQivvspZ+0BFtJv5UftXTrR
	p5fp7bCeYKr+wJrwVhN4dvo5W4HwqYCZfnmg96POO3O3C0RRXsyiOO7GR7rufXxMSXNWc7vDULlTL
	m3BWLpEJafpebYbRWHKNmPjII+a7JF1hw8s0zWJOqKXPSEomr8wYwoLlgKIFyZFkgoeJLsgMTrYIv
	cBHUl4eWKZDjt560UqTz/ld/tFy6SN3KOp+eMdyZf97clGKSxNWxmzK5bA2VuG5mh0Hcw54IKGlhw
	boHs1EcaDw1YdBVRH0IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVli-0001t3-Jp; Tue, 26 May 2020 09:21:06 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVlZ-0001sH-W6
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 09:20:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id e4so1135592ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 02:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tjIxLurGAZl3ClrqkcDTUozxTD1nDew3Brnlr2xXLqY=;
 b=JCqyYSiMdYS1eYDRtnDeEiedABn2SLAJ9eHMlUwpGPm+5yJt1v4LCf6UvpJc84XRbE
 1cfRRQoLViCSj/Ef6G2XQ1MnDs8XRyleZi6kQTJgM4lW4Eyurn8txIZenaHRroS5F4Ii
 zqWLfi1rIGTUwxWPo6NxZWKxgXdkIdm6Z/9uTNfehAxFi1FZ5QXiVI/oLvhWfxfBZP04
 64YHr1ZbYww9BFPrJ+2zK2C1+oW+dLlk/sZkNNq4aRcvkJ5DbIEeA679CTRIvnoSxtQM
 qA8qkXqWSIUdnpytsjCspoXtwgmZPFRfsVg7QYO2gGDE+hSnc8P9Dw8ZhWPx2fnwvwsb
 qrxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tjIxLurGAZl3ClrqkcDTUozxTD1nDew3Brnlr2xXLqY=;
 b=il2+4rszo6kD1ydfz2HbpI6tIw2loxZN9qP9vHdqM+exWlU64yEQXsIw98T/bk9P2B
 sjb7kyU4lQm2baR6ifpuZ9ioXSK8H1X9D5bgErnkX+1ACw9lGpK6/CHV8mGYAobi0CTT
 gumeNKipEpikV2JV8bFNojSRXVwXyyRit/YVlXUpg2TVYzpF6C7bdOA+MQeAQQqZiwt+
 0R3+xKgDY5rGgH8wsxe56B88e6+J5n/kp6SOV9EAUe4oODyI7Ug44DWoQQttnFEF2EJt
 CjlGiuL4jfsxJ2r8GC1t0NdkMkVsZqkLOL49Hwm13d9Ioh+PQs/Dzh5pXUO8N27Sa2S6
 1wow==
X-Gm-Message-State: AOAM532t+dMTLfwO8h+LUOo1SwzIcjRVjrQu8JF06GE1EbIgI2ZnCKZC
 NCbie+EkWNMMCDMxupNapR50v/Oki0AeYZ6fm01HkA==
X-Google-Smtp-Source: ABdhPJwg6A/TEx1rm0SmH/Tfvf7jOImMZnrbm86NXCtz4hLlqpfrcSfkYxR6Rag1WIB7c/CsQ4iUICjgpzIFIhw1xII=
X-Received: by 2002:a2e:711c:: with SMTP id m28mr162302ljc.104.1590484855739; 
 Tue, 26 May 2020 02:20:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-2-lars.povlsen@microchip.com>
 <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
 <87pnb1nf2j.fsf@soft-dev15.microsemi.net>
 <CACRpkdYesD9sRQZXQNEaBY2Ouu3bjKKGWpRtU-Lpa4AcjyPwXw@mail.gmail.com>
 <87r1v8oz9f.fsf@soft-dev15.microsemi.net>
In-Reply-To: <87r1v8oz9f.fsf@soft-dev15.microsemi.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 May 2020 11:20:44 +0200
Message-ID: <CACRpkdaJvaqPptPD-A1DriVgBOZGZ4Qf0UsbsjG39ptx6bSJKg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add bindings for mscc,
 ocelot-sgpio
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_022058_039580_9A9C2922 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 4:38 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> Yes, the problem is they're not in sequence. F.ex. you could have ports
> 0,1 enabled, skip 2,3,4 and have 5,6,7 enabled.

Just use disabled nodes.

That would look like this in my idea of a device tree:

pinctrl@nnn {
    gpio0: gpio@0 {
        compatible = "foo";
        status = "ok";
        ....
    };
    gpio1: gpio@1 {
        compatible = "foo";
        status = "ok";
        ....
    };
    gpio2: gpio@2 {
        compatible = "foo";
        status = "disabled";
        ....
    };
    gpio3: gpio@3 {
        compatible = "foo";
        status = "disabled";
        ....
    };
    gpio4: gpio@4 {
        compatible = "foo";
        status = "disabled";
        ....
    };
    gpio5: gpio@5 {
        compatible = "foo";
        status = "ok";
        ....
    };
    gpio6: gpio@6 {
        compatible = "foo";
        status = "ok";
        ....
    };
    gpio7: gpio@7 {
        compatible = "foo";
        status = "ok";
        ....
    };
};

It is common to use the status to enable/disable nodes like this.

In the Linux kernel is is possible to iterate over these subnodes and
check which ones are enabled and disabled while keeping the
index by using something like:

i = 0;
struct device_node *np, *child;
for_each_child_of_node(np, child) {
    if (of_device_is_available(child)) {
        pr_info("populating device %d\n", i);
    }
    i++;
}

Certainly you can use i in the above loop to populate your registers
etc from an indexed array.

This way the consumers can pick their GPIO from the right port
and everything just using e.g.
my-gpios = <&gpio6 4 GPIO_OUT_LOW>;

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
