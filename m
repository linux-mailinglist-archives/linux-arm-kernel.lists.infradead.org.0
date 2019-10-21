Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27407DED38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEf84joOP1Ck3uuyaIAaGQjPe7If7VKw2ejq5TQedWE=; b=sMdtD2XKljuWQZ
	xwTz9qB3O7FhAru9cKejrP2jeTCt2TncKusvE4vdKVjl3k17x84m/DfVVZTPUZNQeLNzMJa6QfF9G
	yzHJc7Ka/ch4gTFUbVkYdzBQo/rhWp66aX2PCk92FSjq+yQdGFlaZbDyYf/FxlRDu2OdINSqCIbW6
	jEfncZ+Nz1I4jWART6EEctdpSB1Hq+POlwHbs1/Et31CGuI08UznrezQPMnJ0O9NpdUo1YoAsZd9k
	6q63AvaucVtLkaPvQoAv6wbFQHQe83ZX1Om06EnTeLbXA1WKLunZ0Kl8hFcUxdBbNenP7Bdfb0dBk
	sVtBCGOeGEo9IZbJW3eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXW0-0002Pl-4y; Mon, 21 Oct 2019 13:14:28 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXVb-00029F-Q2; Mon, 21 Oct 2019 13:14:05 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id MXVRiV2Nbo1ZhMXVUiMOId; Mon, 21 Oct 2019 15:13:58 +0200
Subject: Re: [PATCH 0/2] media: meson: vdec: Add compliant H264 support
To: Maxime Jourdan <mjourdan@baylibre.com>
References: <20191007145909.29979-1-mjourdan@baylibre.com>
 <8563127e-fe2c-a633-556b-8a883cebb171@xs4all.nl>
 <977c48e8-8275-c96a-688b-ccfbb873eb79@baylibre.com>
 <65a88bfc-d82b-1487-7983-507149b11673@xs4all.nl>
 <acef4f1e-0b59-30f5-f31f-9fc22f393072@baylibre.com>
 <fb6edb95-069e-abeb-416e-2327da0a87ab@xs4all.nl>
 <CAMO6nazotuiZQROoA4+b8tHZ-qpR4TS1RZWV6=fyPVCdsxz1Zg@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <92571553-392c-6c39-89a7-7fc5d311e6fc@xs4all.nl>
Date: Mon, 21 Oct 2019 15:13:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMO6nazotuiZQROoA4+b8tHZ-qpR4TS1RZWV6=fyPVCdsxz1Zg@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCQT1FobNixHI0o87HlV/5RxUjJJ9LfxkepsjS/0tVIOf38xhZbKTitY70US27np3BGtVuCh6NeffOlTSi/ziGHapsCog7Kv55IdfGGTZt3dEMCBpoMH
 qviia/ZxqTaXUT2wV9pEDqtCd95P1AsLaW80iEXddDtI0IGXs2vcNN4JuQfXbOme0WNAQU5g5kG0KpKw9KSC4/ZARovPUfzsH57di8rMy81bkLGSegATEtHF
 Z5/RKPztwmw3ehpmDdZB9I3tTPDZnNS3pVxrncwwKvuL1JcNN/C84+w4fYTKqq9fvGGcNsO6VcPu4wQBZg1bLhLEa3IUkB/oR0xOIU2oDRx8qPS2axg559mg
 ZQLZ5CUOMDTZ8y7dq2zr/aC+8yHBEXChJWMZTZVmuH5YZPx5BVI0qYIAjp8MTj4tKDlYuN47p7//mfKtuN3IjC/8hH+ciFKXBQ90UoH759tejHAC6B561TJ+
 WThmxoY2IzVGUV1xAKwdn+6pEN/Z9Nae05iiXCMBkSw71YVl4Gb1fNzVlf22eEwpCYOCW+9chbcztY/+2xxmNOad16dUiYrtwEV2vw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_061404_005488_243C1B2E 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-amlogic@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/18/19 9:50 AM, Maxime Jourdan wrote:
> On Wed, Oct 9, 2019 at 2:01 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 10/8/19 3:40 PM, Maxime Jourdan wrote:
>>> On 07/10/2019 18:39, Hans Verkuil wrote:
>>>> On 10/7/19 6:24 PM, Maxime Jourdan wrote:
>>>>> On 07/10/2019 17:12, Hans Verkuil wrote:
>>>>>> On 10/7/19 4:59 PM, Maxime Jourdan wrote:
>>>>>>> Hello,
>>>>>>>
>>>>>>> This patch series aims to bring H.264 support as well as compliance update
>>>>>>> to the amlogic stateful video decoder driver.
>>>>>>>
>>>>>>> There is 1 issue that remains currently:
>>>>>>>
>>>>>>>    - The following codepath had to be commented out from v4l2-compliance as
>>>>>>> it led to stalling:
>>>>>>>
>>>>>>> if (node->codec_mask & STATEFUL_DECODER) {
>>>>>>>      struct v4l2_decoder_cmd cmd;
>>>>>>>      buffer buf_cap(m2m_q);
>>>>>>>
>>>>>>>      memset(&cmd, 0, sizeof(cmd));
>>>>>>>      cmd.cmd = V4L2_DEC_CMD_STOP;
>>>>>>>
>>>>>>>      /* No buffers are queued, call STREAMON, then STOP */
>>>>>>>      fail_on_test(node->streamon(q.g_type()));
>>>>>>>      fail_on_test(node->streamon(m2m_q.g_type()));
>>>>>>>      fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
>>>>>>>
>>>>>>>      fail_on_test(buf_cap.querybuf(node, 0));
>>>>>>>      fail_on_test(buf_cap.qbuf(node));
>>>>>>>      fail_on_test(buf_cap.dqbuf(node));
>>>>>>>      fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
>>>>>>>      for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
>>>>>>>          fail_on_test(buf_cap.g_bytesused(p));
>>>>>>>      fail_on_test(node->streamoff(q.g_type()));
>>>>>>>      fail_on_test(node->streamoff(m2m_q.g_type()));
>>>>>>>
>>>>>>>      /* Call STREAMON, queue one CAPTURE buffer, then STOP */
>>>>>>>      fail_on_test(node->streamon(q.g_type()));
>>>>>>>      fail_on_test(node->streamon(m2m_q.g_type()));
>>>>>>>      fail_on_test(buf_cap.querybuf(node, 0));
>>>>>>>      fail_on_test(buf_cap.qbuf(node));
>>>>>>>      fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
>>>>>>>
>>>>>>>      fail_on_test(buf_cap.dqbuf(node));
>>>>>>>      fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
>>>>>>>      for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
>>>>>>>          fail_on_test(buf_cap.g_bytesused(p));
>>>>>>>      fail_on_test(node->streamoff(q.g_type()));
>>>>>>>      fail_on_test(node->streamoff(m2m_q.g_type()));
>>>>>>> }
>>>>>>>
>>>>>>> The reason for this is because the driver has a limitation where all
>>>>>>> capturebuffers must be queued to the driver before STREAMON is effective.
>>>>>>> The firmware needs to know in advance what all the buffers are before
>>>>>>> starting to decode.
>>>>>>> This limitation is enforced via q->min_buffers_needed.
>>>>>>> As such, in this compliance codepath, STREAMON is never actually called
>>>>>>> driver-side and there is a stall on fail_on_test(buf_cap.dqbuf(node));
>>>>>>
>>>>>> That's interesting. I will have to look more closely at this.
>>
>> This requires a helper function in videobuf2-v4l2.c.
>>
>> In vdec_decoder_cmd you would need code like this:
>>
>>         if (!vb2_start_streaming_called(&capture_queue)) {
>>                 vb2_dequeue_empty_last_buf(&capture_queue);
>>                 return 0;
>>         }
>>
>> The vb2_dequeue_empty_last_buf (function name can probably be improved upon!)
>> does nothing if no capture buffers were queued, otherwise it takes the first
>> buffer, sets the LAST flag and sets bytesused to 0 and marks it as DONE.
>>
>> The driver cannot do this directly, since the buffers were never queued to the
>> driver and are owned by vb2.
>>
>> This is something that needs to be done for any codec driver that sets
>> min_buffers_needed to a value > 1.
>>
>> The vb2 function would look something like this:
>>
>> void vb2_dqbuf_empty_last_buf(struct vb2_queue *q)
>> {
>>         struct vb2_buffer *vb;
>>         struct vb2_v4l2_buffer *vbuf;
>>         unsigned int i;
>>
>>         if (WARN_ON(q->is_output))
>>                 return;
>>         if (list_empty(&q->queued_list))
>>                 return;
>>         vb = list_first_entry(&q->queued_list, struct vb2_buffer, queued_entry);
>>         list_del(&vb->queued_entry);
>>         for (i = 0; i < vb->num_planes; i++)
>>                 vb2_set_plane_payload(vb, i, 0)
>>         vbuf = to_vb2_v4l2_buffer(vb);
>>         vbuf->flags |= V4L2_BUF_FLAG_LAST;
>>         vb2_buffer_done(vb, VB2_BUF_STATE_DONE);
>> }
>> EXPORT_SYMBOL_GPL(vb2_dqbuf_empty_last_buf);
>>
>> Neither compiled, nor tested, and I think this should be in v4l2-mem2mem.c instead of
>> in videobuf2-v4l2.c since this is very m2m specific.
>>
>> So see this as a suggestion :-)
>>
>> Anyway, the key take-away from this is that userspace does not know if your driver
>> behaves the way it does, so STOP should still produce a sane expected result.
>>
>> Which in this is just a single empty capture buffer marked LAST.
> 
> Thanks, this makes sense. It doesn't quite fit the current usage
> unfortunately as the test in v4l2-compliance goes like this:
> 
> fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
> fail_on_test(buf_cap.querybuf(node, 0));
> fail_on_test(buf_cap.qbuf(node));
> fail_on_test(buf_cap.dqbuf(node));
> fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
> 
> Since the buffer is queued after issuing the stop cmd, it is not
> possible to flag it as DONE in vdec_decoder_cmd.
> 
> A solution would be to hijack vidioc_qbuf and flag the buffer if a
> stop has been issued previously and the capture queue is not
> streaming. Would that be okay ?

Actually, I am wondering if this shouldn't be integrated into
v4l2-mem2mem.c. The corner case where you need to use an empty
last buffer is really awkward for drivers. So perhaps this should
be integrated into v4l2-mem2mem.c where you can mark that the
next queued buffer shall be immediately returned as an empty buffer
with the LAST flag set.

Since v4l2-mem2mem already has its own vidioc_qbuf function it can
easily be added there, and I think that's a much better place than
having to touch vb2 itself.

Regards,

	Hans

> 
> Maxime
> 
>>
>> Regards,
>>
>>         Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
